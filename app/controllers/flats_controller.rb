class FlatsController < ApplicationController
  skip_before_action :verify_authenticity_token
  

  def index
  @flats = Flat.all
  render json: @flats
end

def show
  @flat = Flat.find(params[:id])
  render json: @flat
end

def new
  @flat = Flat.new
end

def create

  photos = Cloudinary::Uploader.upload(params[:photos], 
    use_filename:true, 
    unique_filename:false,
    overwrite:true
    )

    @flat = Flat.create(flat_params)
    @flat.photos.attach(flat_params[photos:photos["url"]])

  render json: @flat
  end

def edit
  @flat = Flat.find(params[:id])
end

def update
  @flat = Flat.find(params[:id])
  @flat.update(flat_params)
  render json: @flat
end

def destroy
  @flat.find(params[:id])
  @flat.destroy
  head :no_content, status: :ok
end

private

def flat_params
  params.permit(:flat,:name, :address, :description, :price_per_night, :number_of_guests, :pic_url, photos:[])
end

end
