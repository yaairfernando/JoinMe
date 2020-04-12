class EventsController < ApplicationController
  include EventsHelper
  before_action :find_event, only: %i[show edit] 
  impressionist actions: [:show], unique: [:impressionable_type, :impressionable_id]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    event_days_to_start @event
    if @event.save
      @value = Cloudinary::Uploader.upload(params[:event][:image])
      update_icon_url @value
      flash[:success] = "Congrats!! #{current_user.name}, your event will start in #{@days} days!!!.."
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params_update)
      flash[:success] = "Awesome #{@event.creator.name} your event has been saved!!"
      redirect_to profile_path(current_user)
    else
      flash.now[:danger] = 'Please check the form for errors.'
      render :edit
    end
  end

  def invite
    @event = Event.find_by(id: params[:id])
    @invitation = Invitation.find_or_create_by(attendee_id: params[:user_id], event_id: params[:id])
    attendee = User.find_by(id: params[:user_id])
    flash[:success] = "Great!! #{attendee.name} has recieved your invitation to this event."

    respond_to do |format|
      format.json do
        if request.xhr?
          render :json => {:success => true, :data => flash }
        end
      end
 
      format.html {   }
    end
  end

  def attend
    @invitation = Invitation.find_by(attendee_id: current_user.id, event_id: params[:id])

    if @invitation.update(accepted: true)
      flash[:success] = "Congrats #{current_user.name}, you are attending to this event!!.. #{@invitation.event.title} hosted by #{@invitation.event.creator.name}"
      redirect_to invited_events_path
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.erb
      format.json 
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :date, :description, :title, :image)
  end

  def event_params_update
    params.require(:event).permit(:location, :date, :description, :title)
  end

  def find_event
    @event = Event.find(params[:id])
  end

  def load_current_user
    User.includes(:attended_events, :invitations, :events) if logged_in?
  end
end
