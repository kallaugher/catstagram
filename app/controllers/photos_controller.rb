class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end


  def add_vote
   @photo = Photo.find(params[:id])
   count=@photo.votes+=1
   @photo.update_attributes(:votes => count)

   redirect_to photo_path(@photo)
  end

  def show
  end

  def new
    @photo = Photo.new
    3.times {@photo.tags.build}
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photo_path(@photo)
  end

  def edit
    3.times {@photo.tags.build}
  end

  def update
    @photo.update(photo_params)
    redirect_to photo_path(@photo)
  end

  def destroy
    @photo.destroy
    redirect_to photos_path
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :caption, :user_id, tag_ids: [], tags_attributes: [:name])
  end
end
