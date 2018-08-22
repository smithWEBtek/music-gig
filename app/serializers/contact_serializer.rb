class ContactSerializer < ActiveModel::Serializer
	attributes :id, :fname, :lname, :phone, :email, :url, :facebook, :notes
	 
	has_many :instruments
end
