class SessionsController < ApplicationController

  def new
    redirect_to root_path unless !logged_in?
  end

  def create

    @user = User.find_by(email: params[:session][:email].downcase)

    if @user && @user.authenticate(params[:session][:password].downcase)
      log_in @user
      flash[:log_in_success] = "Welcome back #{@user.name}...!!"
      redirect_to root_path
    else
      flash[:log_in_danger] = "The email or password you enter is invalid"
      # redirect_to sign_up_path
      respond_to do |format|
        format.json do
          # byebug
          if request.xhr?
            render :json => {:success => true, :errors => flash }
          end
        end
   
        format.html {   }
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
