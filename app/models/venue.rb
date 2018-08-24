class Venue < ApplicationRecord
	has_many :gigs

	has_many :venue_contacts
	has_many :contacts, through: :venue_contacts
end
