class SongSerializer < ActiveModel::Serializer
	attributes :id, :name, :notes

	has_many :resources
end
