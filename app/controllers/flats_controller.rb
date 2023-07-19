
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
  photo1 = params[:photo1]
  photo2 = params[:photo2]
  photo3 = params[:photo3]

  photoarray = []
  urlArray = []
  
  photoarray.push(photo1,photo2,photo3)
        photoarray.each do |element|
        cloudinaryreturn = Cloudinary::Uploader.upload(element, 
          use_filename:true, 
          unique_filename:false,
          overwrite:true
          )
        urlArray.push(cloudinaryreturn["url"])
        end

  # I want to add cloudinaryreturn["url"] to a newly created flat by pushing it into an array called pic_url
  flat_params_with_url = flat_params.merge(pic_url: urlArray)
  @flat = Flat.create(flat_params_with_url)
  render json: @flat

    # active storage if i want to add a blob can use the following but not sure its supper helpful.
    # cloudinaryurl= URI.parse(cloudinaryreturn["url"]).open
    # @flat.photos.attach(io: cloudinaryurl, filename: "face.jpg", content_type: "image/jpg")

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
