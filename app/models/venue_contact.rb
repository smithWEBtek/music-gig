class VenueContact < ApplicationRecord
	belongs_to :venue 
	belongs_to :contact
end