class SessionsController < ApplicationController

  def new

  end

  def welcome

  end

  def create
    user = User.find_by(name: params[:name])
    if user  && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      "You are logged out"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
