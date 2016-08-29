class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :authorize_user, :logged_in?, :top_cat

   def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end

   def logged_in?
    !!current_user
   end
  
   def authorize_user
     if !logged_in?
      redirect_to '/'
     end
   end

   def high_vote
      @@top_cat 
      max = 0
      if @count > max 
        max = @count
        @top_cat = @photo
      end   
   end

  def top_cat
    photos = Photo.all
    @top_cat = photos.sort_by {|pic| pic.votes}.last
  end

end
