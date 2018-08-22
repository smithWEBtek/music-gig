class BandSerializer < ActiveModel::Serializer
	attributes :id, :name, :url, :notes
 
	# has_many :contacts
	# has_many :instruments
	# has_many :gigs
end
