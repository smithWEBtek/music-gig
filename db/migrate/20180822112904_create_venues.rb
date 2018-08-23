class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :booking_email
      t.integer :main_contact_id
      t.string :name
			t.string :notes
      t.string :phone
      t.string :url
    end
  end
end
