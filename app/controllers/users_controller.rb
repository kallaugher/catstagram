class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update]

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

  private

  def set_user
    @user = User.find(params[:id])
  end

end
