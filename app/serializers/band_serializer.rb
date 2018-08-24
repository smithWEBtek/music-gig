class BandSerializer < ActiveModel::Serializer
	attributes :id, :name, :url, :notes, :contacts, :gigs, :instruments
	
	has_many :band_contacts
	has_many :contacts, through: :band_contacts

	has_many :band_gigs
	has_many :gigs, through: :band_gigs

	has_many :band_instruments
	has_many :instruments, through: :band_instruments
end
