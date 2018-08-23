class Api::VenuesController < ApplicationController
	before_action :set_venue, only: [:show, :update, :destroy]
 
	def index
		@venues = Venue.all
		render json: @venues
	end

	def show
		render json: @venue
	end

	def create
		@venue = Venue.new(venue_params)
		if @venue.save
			render json: @venue
		else
			render json: { errors: { message: 'venue NOT created' }}
		end
	end

	def update
		@venue.update(venue_params)
		if @venue.save
			render json: @venue
		else
			render json: { errors: { message: 'venue NOT updated' }}
		end
	end

	def destroy
		@venue.update(active: false)
		render json: { message: 'venue remains in Database, with active set to false' }
	end
	
	def resources
		@resources = @venue.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'venue resources NOT found' }}
		end
	end
 
	 private
		 def set_venue
			 @venue = Venue.find_by_id(params[:id])
			 end
		 def venue_params
			 params.require(:venue).permit(:id, :name, :url, :notes)
		 end
 end
 