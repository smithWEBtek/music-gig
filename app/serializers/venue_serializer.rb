class VenueSerializer < ActiveModel::Serializer 
	attributes :id, :name,	:address,	:url,	:phone,	:booking_email,	:main_contact_id,	:notes

	has_many :gigs
	has_many :contacts
end
