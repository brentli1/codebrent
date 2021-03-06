class SessionsController < ApplicationController
  def new
    if logged_in?
      flash[:notice] = "You are already signed in."
      redirect_to root_path
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in."
      redirect_to root_path
    else
      flash.now[:danger] = "There was something wrong with your login information."
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = "You have logged out."
    redirect_to root_path
  end
end
