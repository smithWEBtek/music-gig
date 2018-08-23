class Api::BandContactsController < ApplicationController
	before_action :set_band_contact, only: [:show, :update, :destroy]
 
	def index
		@band_contacts = BandContact.all
		render json: @band_contacts
	end

	def show
		render json: @band_contact
	end

	def create
		@band_contact = BandContact.new(band_contact_params)
		if @band_contact.save
			render json: @band_contact
		else
			render json: { errors: { message: 'band_contact NOT created' }}
		end
	end

	def update
		@band_contact.update(band_contact_params)
		if @band_contact.save
			render json: @band_contact
		else
			render json: { errors: { message: 'band_contact NOT updated' }}
		end
	end

	def destroy
		@band_contact.update(active: false)
		render json: { message: 'band_contact remains in Database, with active set to false' }
	end
	
	def resources
		@resources = @band_contact.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'band_contact resources NOT found' }}
		end
	end
 
	 private
		 def set_band_contact
			 @band_contact = BandContact.find_by_id(params[:id])
			 end
		 def band_contact_params
			 params.require(:band_contact).permit(:band_id, :contact_id)
		 end
 end
 