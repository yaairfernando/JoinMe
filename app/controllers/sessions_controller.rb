class SessionsController < ApplicationController

  def new
    respond_to do |format|
      format.js {render layout: false} 
      format.js
    end
  end

  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome back #{@user.name}...!!"
      redirect_to root_path
    else
      flash[:danger] = "The email or password you enter is invalid"
      redirect_to sign_up_path
    end
  end

  def destroy
  end
end
