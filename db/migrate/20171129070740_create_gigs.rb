class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
			t.integer :band_id
			t.datetime :downbeat
			t.string :dress
			t.string :fee
			t.boolean :food, default: false
			t.datetime :load_in
			t.string :notes
			t.string :parking
			t.integer :venue_id
    end
  end
end
