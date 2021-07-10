class SessionsController < ApplicationController
  def home
  end

  #logout
  def destroy
    session.clear
    redirect_to root_path
  end

  #login
  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user) # user_path creates a URL --> "/users/#{user.id}"
    else
      flash[:message] = "Invalid Username or Password"
      redirect_to login_path
    end
  end

end
