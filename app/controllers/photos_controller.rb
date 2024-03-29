class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show update destroy ]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
# result = Cloudinary::Uploader.upload(params[:image])
#   @photo = Photo.create(image: result['url'])
   
    if @photo.save
      render :show, status: :created, location: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  def create
  
  image = Cloudinary::Uploader.upload(params[:image])
  photo = Photo.create(image: image['url'])
   
   render json: photo
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    if @photo.update(photo_params)
      render :show, status: :ok, location: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_params
      params.permit(:user_id, :cohort_id, :image)
    end
end
