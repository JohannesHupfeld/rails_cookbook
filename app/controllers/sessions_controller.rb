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
end