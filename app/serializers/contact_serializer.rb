class ContactSerializer < ActiveModel::Serializer
	attributes :id, :fname, :lname, :phone, :email, :url, :facebook, :notes
	 
	has_many :band_contacts
	has_many :bands, through: :band_contacts
end
