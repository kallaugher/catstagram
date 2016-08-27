class RegistrarsController < ApplicationController
  before_action :authorize_user, only:[:show, :edit, :update, :destroy]
 
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
     else
       render '/users/new'
    end
  end



  private


  def user_params
    params.require(:user).permit(:name, :bio, :photo)
  end
end
