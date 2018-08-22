class ResourceSerializer < ActiveModel::Serializer
	attributes :id, :song_id, :name, :format, :key, :url
	
	belongs_to :song
end
