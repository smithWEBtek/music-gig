class Band < ApplicationRecord
	has_many :band_contacts
	has_many :contacts, through: :band_contacts
	
	has_many :band_gigs
	has_many :gigs, through: :band_gigs

	# has_many :instruments
end
