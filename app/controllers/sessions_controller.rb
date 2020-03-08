class SessionsController < ApplicationController

  def new
    redirect_to root_path unless !logged_in?
  end

  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      flash[:log_in_success] = "Welcome back #{@user.name}...!!"
      redirect_to root_path
    else
      flash[:log_in_danger] = "The email or password you enter is invalid"
      redirect_to sign_up_path
    end
  end

  def destroy
  end
end
