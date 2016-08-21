class PhotosController < ApplicationController
  def index
    @photo = Photo.new 
    @photos = current_user.photos



  end

  def show
  end

  def new
  end

  def create
    p = Photo.create(params.require(:photo).permit(:image).merge(user: current_user))
    binding.pry
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
