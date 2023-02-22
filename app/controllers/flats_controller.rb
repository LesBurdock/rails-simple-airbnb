class FlatsController < ApplicationController
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
  @flat = Flat.new(flat_params)
  @flat.save
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
  params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :pic_url)
end

end
