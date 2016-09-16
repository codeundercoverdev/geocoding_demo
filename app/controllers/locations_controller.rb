class LocationsController < ApplicationController
	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		if @location.save
			redirect_to location_path(@location)
		else
			render 'new'
		end
	end

	def show
		@location = Location.find(params[:id])
		render text: "Coordinates are #{@location.convert_to_coordinates}"
	end

	private

	def location_params
		params.require(:location).permit(:street_address, :city, :state)
	end
end
