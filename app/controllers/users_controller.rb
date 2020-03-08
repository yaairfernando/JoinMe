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

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
