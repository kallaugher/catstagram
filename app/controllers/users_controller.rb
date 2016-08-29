class UsersController < ApplicationController
 before_action :set_params, only: [:show, :edit, :update]

  def index
    @users =  User.all
  end

  def new
    @user = User.new
  end

  def show
    photos = @user.photos
  end

  def create
  end
   
  def edit
 
  end
  def update
    if @user.update(user_params)
        redirect_to @user
    else
      render :edit
    end
  end

  private

  def set_params
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :bio)
  end
end
