class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)
    if @location.valid?
      @location.save
      redirect_to location_path(@location)
    else
      flash[:error] = @location.errors.full_messages
      redirect_to new_location_path
    end
  end


  def location_params
    params.require(:location).permit(:neighborhood)
  end
end
