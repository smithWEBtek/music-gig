class Api::InstrumentsController < ApplicationController
	before_action :set_instrument, only: [:show, :update, :destroy]
 
	def index
		@instruments = Instrument.all
		render json: @instruments
	end

	def show
		render json: @instrument
	end

	def create
		@instrument = Instrument.new(instrument_params)
		if @instrument.save
			render json: @instrument
		else
			render json: { errors: { message: 'instrument NOT created' }}
		end
	end

	def update
		@instrument.update(instrument_params)
		if @instrument.save
			render json: @instrument
		else
			render json: { errors: { message: 'instrument NOT updated' }}
		end
	end

	def destroy
		@instrument.update(active: false)
		render json: { message: 'instrument remains in Database, with active set to false' }
	end
	
	def resources
		@resources = @instrument.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'instrument resources NOT found' }}
		end
	end
 
	 private
		 def set_instrument
			 @instrument = Instrument.find_by_id(params[:id])
			 end
		 def instrument_params
			 params.require(:instrument).permit(:name, :notes)
		 end
 end
 