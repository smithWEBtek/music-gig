class CreateBandContact < ActiveRecord::Migration[5.1]
  def change
    create_table :band_contacts do |t|
			t.integer :band_id
			t.integer :contact_id
    end
  end
end
