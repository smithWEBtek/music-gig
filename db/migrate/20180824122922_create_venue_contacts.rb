class CreateVenueContacts < ActiveRecord::Migration[5.1]
  def change
		create_table :venue_contacts do |t|
			t.integer :venue_id
			t.integer :contact_id
    end
  end
end
