class UsersController < ApplicationController
 before action :set_user, only: [:show, :edit, :update]

  def index
    @users =  User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
