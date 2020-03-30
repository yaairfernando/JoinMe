class EventsController < ApplicationController
  include EventsHelper
  before_action :find_event, only: %i[show]

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

  def invite
    @event = Event.find_by(id: params[:id])
    @invitation = Invitation.new(attendee_id: params[:user_id], event_id: params[:id])
    attendee = User.find_by(id: params[:user_id])

    if @invitation.save
      flash[:success] = "Great!! #{attendee.name} has recieved your invitation to this event."
    else
      flash[:danger] = 'There was an error trying to add a new guest to your event!!!'
    end

    redirect_to event_path(@event)
  end

  def attend
    @invitation = Invitation.find_by(attendee_id: current_user.id, event_id: params[:id])

    if @invitation.update(accepted: true)
      flash[:success] = "Congrats #{current_user.name}, you are attending to this event!!.. #{@invitation.event.name} hosted by #{@invitation.event.creator.name}"
      redirect_to invited_events_path
    else
      render event_path(@event)
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.erb
      format.json { render json: @event }
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :date, :description, :title, :image)
  end

  def find_event
    @event = Event.find(params[:id])
  end

  def load_current_user
    User.includes(:attended_events, :invitations, :events) if logged_in?
  end
end
