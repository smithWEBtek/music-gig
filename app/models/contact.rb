class Contact < ApplicationRecord
	has_many :band_contacts
	has_many :bands, through: :band_contacts
end
