class Band < ApplicationRecord
	has_many :band_contacts
	has_many :contacts, through: :band_contacts
	# has_many :instruments
	# has_many :gigs
end
