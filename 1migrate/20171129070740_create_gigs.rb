class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
 
			t.integer :venue_id
			t.integer :band_id
			t.datetime :downbeat
			t.datetime :load_in
			t.datetime :tear_down
			t.boolean :food, default: false
			t.string :dress
			t.string :parking
			t.string :gig_notes
			t.string :fee
    end
  end
end
