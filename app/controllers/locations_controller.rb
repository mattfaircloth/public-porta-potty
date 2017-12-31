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

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to @location
    else
     flash[:error] = @location.errors.full_messages
     redirect_to edit_location_path
    end
   end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

 private

  def location_params
    params.require(:location).permit(:neighborhood)
  end
end
