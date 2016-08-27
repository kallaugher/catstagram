class PhotosController < ApplicationController
  before_action :set_photo, only: :show
  before_action :authorize_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def show
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
