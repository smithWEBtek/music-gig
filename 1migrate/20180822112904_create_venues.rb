class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :url
      t.string :phone
      t.string :booking_email
      t.integer :main_contact_id
			t.string :notes
    end
  end
end
