class PhotosController < ApplicationController
  before_action :set_photo, only: :show
  before_action :authorize_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end
  
  def add_vote
    self.votes += 1
  end

  def show
   count=@photo.votes+1
   @photo.update_attributes(:votes => count)
  end


  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photo_path(@photo)
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :caption, :user_id)
  end
end
