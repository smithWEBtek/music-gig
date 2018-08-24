class Gig < ApplicationRecord
	belongs_to :band
	belongs_to :venue
	
	has_many :songs
	has_many :resources, through: :songs

	has_many :band_gigs
	has_many :bands, through: :band_gigs
end
