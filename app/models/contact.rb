class Contact < ApplicationRecord
	has_many :band_contacts
	has_many :bands, through: :band_contacts

	has_many :venue_contacts
	has_many :venues, through: :venue_contacts
end
