class GigSerializer < ActiveModel::Serializer
	attributes :id, :venue_id, :band_id, :downbeat, :load_in, :tear_down, :food, :dress, :parking, :fee, :notes

	belongs_to :band
	belongs_to :venue
	has_many :songs
	has_many :resources, through: :songs
end
