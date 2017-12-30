class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
    #@bathrooms = current_user.bathrooms
  end

  def new
   @bathroom = Bathroom.new
   @locations = Location.all
  end

  def show
   @bathroom = Bathroom.find(params[:id])
  end

  def create
   @bathroom = Bathroom.new(bathroom_params)
   if @bathroom.valid?
     @bathroom.save
     redirect_to @bathroom
   else
    flash[:error] = @bathroom.errors.full_messages
    redirect_to new_bathroom_path
   end
  end

  def edit
    @bathroom = Bathroom.find(params[:id])
    @locations = Location.all
  end

  def update
    @bathroom = Bathroom.find(params[:id])
    if @bathroom.valid?
      @bathroom.save
      redirect_to @bathroom
    else
     flash[:error] = @bathroom.errors.full_messages
     redirect_to edit_bathroom_path
    end
   end

  def destroy
    @bathroom = Bathroom.find(params[:id])
    @bathroom.destroy
    redirect_to bathrooms_path
  end


  private

    def bathroom_params
      params.require(:bathroom).permit(:name, :cleanliness, location_ids: [])
    end
end
