class Api::ResourcesController < ApplicationController
	before_action :set_resource, only: [:show, :update, :destroy]
 
	def index
		@resources = Resource.all
		render json: @resources
	end

	def show
		render json: @resource
	end

	def create
		@resource = Resource.new(resource_params)
		if @resource.save
			render json: @resource
		else
			render json: { errors: { message: 'resource NOT created' }}
		end
	end

	def update
		@resource.update(resource_params)
		if @resource.save
			render json: @resource
		else
			render json: { errors: { message: 'resource NOT updated' }}
		end
	end

	def destroy
		@resource.update(active: false)
		render json: { message: 'resource remains in Database, with active set to false' }
	end
	
	def resources
		@resources = @resource.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'resource resources NOT found' }}
		end
	end
 
	 private
		 def set_resource
			 @resource = Resource.find_by_id(params[:id])
			 end
		 def resource_params
			 params.require(:resource).permit(:song_id, :name, :format, :url, :notes)
		 end
 end
 