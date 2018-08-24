class Api::ContactsController < ApplicationController
	before_action :set_contact, only: [:show, :update, :destroy]
 
	def index
		@contacts = Contact.all
		render json: @contacts
	end

	def show
		render json: @contact
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			render json: @contact
		else
			render json: { errors: { message: 'contact NOT created' }}
		end
	end

	def update
		@contact.update(contact_params)
		if @contact.save
			render json: @contact
		else
			render json: { errors: { message: 'contact NOT updated' }}
		end
	end

	def destroy
		@contact.update(active: false)
		render json: { message: 'contact remains in Database, with active set to false' }
	end
	
	def resources
		@resources = @contact.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'contact resources NOT found' }}
		end
	end
 
	 private
		 def set_contact
			 @contact = Contact.find_by_id(params[:id])
			 end
		 def contact_params
			 params.require(:contact).permit(:fname, :lname, :phone, :email, :url, :facebook, :notes)
		 end
 end
 