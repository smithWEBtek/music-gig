class CreateSongResources < ActiveRecord::Migration[5.1]
  def change
    create_table :song_resources do |t|
      t.integer :song_id
      t.string :name
      t.string :format
      t.string :key
      t.string :url
    end
  end
end
