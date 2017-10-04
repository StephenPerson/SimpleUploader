class PhotosController < ApplicationController
  http_basic_authenticate_with name: "", password: "", except: [:application,:series]

  # /photos/index
  def index
    @photos = Photo.order(:series)
  end
  # /photos/new
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to '/photos/new'
    else
      render 'new'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:success] = "The photo was destroyed."
    redirect_to '/photos'
  end
  # (base) / :TODO should handle /about /contact /series /series/:series
  def application
    @photos = Photo.order(:series)
    @photo_covers = @photos.where(:series_cover => true)
  end

  def series
    @photos = Photo.where(:series => params[:series])
    @series = params[:series]
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title, :series, :series_cover)
  end
end