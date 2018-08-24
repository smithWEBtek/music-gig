class VenueSerializer < ActiveModel::Serializer 
	attributes :id,
		:name,
		:address,
		:url,
		:phone,
		:booking_email,
		:main_contact_id,
		:notes,
		:contacts

	# has_many :gigs

	has_many :venue_contacts
	has_many :contacts, through: :venue_contacts
end
