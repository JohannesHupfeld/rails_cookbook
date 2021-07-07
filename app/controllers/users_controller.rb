class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id #Log user in
      redirect_to @user #Redirect to show page
    else
      render :new
    end
  end

  def show
    @user = User.find_by_id(params[:id]) #if it doesnt find anything find_by_id will through nil whereas just find will through error
    redirect_to '/' if !@user
  end 

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
