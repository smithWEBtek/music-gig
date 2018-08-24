class CreateBandGig < ActiveRecord::Migration[5.1]
  def change
		create_table :band_gigs do |t|
			t.integer :band_id
			t.integer :gig_id

    end
  end
end
