class Api::BandsController < ApplicationController
	before_action :set_band, only: [:show, :update, :destroy, :resources]
 
	 def index

# binding.pry

		 @bands = Band.all
		 render json: @bands
	 end
 
	 def show
		 render json: @band
	 end
 
	 def create
		 @band = Band.new(band_params)
		 if @band.save
			 render json: @band
		 else
			 render json: { errors: { message: 'band NOT created' }}
		 end
	 end
 
	 def update
		 @band.update(band_params)
		 if @band.save
			 render json: @band
		 else
			 render json: { errors: { message: 'band NOT updated' }}
		 end
	 end
 
	 def destroy
		 @band.update(active: false)
		 render json: { message: 'band remains in Database, with active set to false' }
	 end
	 
	 def resources
		 @resources = @band.resources
		 if @resources
			 render json: @resources
		 else
			 render json: { errors: { message: 'band resources NOT found' }}
		 end
	 end
 
	 private
		 def set_band
			 @band = Band.find_by_id(params[:id])
			 end
		 def band_params
			 params.require(:band).permit(:id, :name, :url, :notes)
		 end
 end
 