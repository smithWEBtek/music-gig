class Api::GigsController < ApplicationController
	before_action :set_gig, only: [:show, :update, :destroy, :resources]
 
	def index
		@gigs = Gig.all
		render json: @gigs
	end

	def show
		render json: @gig
	end

	def create
		@gig = Gig.new(gig_params)
		if @gig.save
			render json: @gig
		else
			render json: { errors: { message: 'gig NOT created' }}
		end
	end

	def update
		@gig.update(gig_params)
		if @gig.save
			render json: @gig
		else
			render json: { errors: { message: 'gig NOT updated' }}
		end
	end

	def destroy
		@gig.update(active: false)
		render json: { message: 'gig remains in Database, with active set to false' }
	end
	
	def resources
		@resources = @gig.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'gig resources NOT found' }}
		end
	end
 
	 private
		 def set_gig
			 @gig = Gig.find_by_id(params[:id])
			 end
		 def gig_params
			 params.require(:gig).permit(:venue_id, :band_id, :downbeat, :load_in, :food, :dress, :parking, :notes, :fee)
		 end
 end
 