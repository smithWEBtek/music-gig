class BandSerializer < ActiveModel::Serializer
	attributes :id, :name, :url, :notes
 
	has_many :band_contacts
	has_many :contacts, through: :band_contacts
end
