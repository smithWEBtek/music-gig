class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :format
      t.string :key
      t.string :name
			t.string :notes
      t.integer :song_id
			t.string :url
    end
  end
end
