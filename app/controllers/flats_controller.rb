require 'open-uri'

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

  cloudinaryreturn = Cloudinary::Uploader.upload(params[:photos], 
    use_filename:true, 
    unique_filename:false,
    overwrite:true
    )

  # I want to add cloudinaryreturn["url"] to a newly created flat by pushing it into an array called pic_url
  flat_params_with_url = flat_params.merge(pic_url: [cloudinaryreturn["url"]])
  @flat = Flat.create(flat_params_with_url)

    # active storage if i want to add a blob can use the following but not sure its supper helpful.
    # cloudinaryurl= URI.parse(cloudinaryreturn["url"]).open
    # @flat.photos.attach(io: cloudinaryurl, filename: "face.jpg", content_type: "image/jpg")

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
  params.permit(:flat,:name, :address, :description, :price_per_night, :number_of_guests, pic_url:[], photos:[])
end

end
