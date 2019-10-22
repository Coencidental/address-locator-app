class PlacesController < ApplicationController
  before_action :authenticate_user!
  require 'geocoder'

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save(place_params)
      redirect_to @place
    else
      render :new
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
      redirect_to @place
    else
      render :edit
    end
  end

  def destroy
    @place = Place.find(params[:id])
  end

  private

  def place_params
    params.require(:place).permit(:name, :number, :street, :suburb, :state, :zip)
  end
end
