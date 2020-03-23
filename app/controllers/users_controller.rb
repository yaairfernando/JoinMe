class UsersController < ApplicationController
  def new
    redirect_to root_path unless !logged_in?
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:sign_up_success] = "Thanks for signing in!!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @my_events = @user.events.paginate(page: params[:page], per_page: 4).order('date DESC')
    @events = []
    @events = User.find(params[:id]).previous_events if params[:passed].present?
    @events = User.find(params[:id]).upcoming_events if params[:coming].present?
    respond_to do |format|
      format.json do
        if request.xhr?
          render :json => {:success => true, :html => (render_to_string("_events", :formats => [:html], :layout => false, :locals => {:events => @events})), data: @events}
        end
      end
 
      format.html {   }
    end
  end

  def invited_events
    @invited_events = Event.where(id: Invitation.all.where(attendee_id: current_user.id,
                                                           accepted: false).pluck(:event_id))
    @accepted_button = true
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
