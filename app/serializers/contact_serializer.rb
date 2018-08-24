class ContactSerializer < ActiveModel::Serializer
	attributes :id,
		:fname, 
		:lname, 
		:phone, 
		:email, 
		:url, 
		:facebook, 
		:notes,
		:bands,
		:venues
	 
	has_many :band_contacts
	has_many :bands, through: :band_contacts

	has_many :venue_contacts
	has_many :venues, through: :venue_contacts
end
