class CreateBandInstrument < ActiveRecord::Migration[5.1]
  def change
		create_table :band_instruments do |t|
			t.integer :band_id 
			t.integer :instrument_id 
    end
  end
end
