class Venue < ApplicationRecord
	has_many :gigs
	has_many :contacts
end
