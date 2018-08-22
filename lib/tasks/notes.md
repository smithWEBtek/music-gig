180821

Change model to music gig database

================================================================
Gig (formerly Lesson)
	belongs_to :band
	belongs_to :venue
	has_many :songs
	has_many :song_resources, through: :songs

class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
 
			t.integer :venue_id
			t.integer :band_id
			t.datetime :downbeat
			t.datetime	:load_in
			t.datetime	:tear_down
			t.boolean :food, default: false
			t.string :dress
			t.string :parking
			t.string :gig_notes
			t.string :pay
      t.timestamps
    end
  end
end

================================================================
Venue
	has_many :gigs
	has_many :gig_contacts
	has_many :contacts, through: :gig_contacts

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
			
			t.timestamps
    end
  end
end
================================================================
Instrument (formerly Student)
	has_many :band_instruments
	has_many :bands, through: :band_instruments

class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :notes
    end
  end
end

================================================================
Contact
	has_many :instruments
	has_many :band_contacts
	has_many :bands, through: :band_contacts

	has_many :venue_contacts
	has_many :venues, through: :venue_contacts

class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email
      t.string :url
      t.string :facebook
      t.string :notes
    end
  end
end

================================================================
Song
	has_many :song_resources

class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :notes
    end
  end
end

================================================================
SongResource
	belongs_to :song

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

================================================================
Band (formerly Teacher)
	has_many :band_contacts
	has_many :contacts, through: :band_contacts
	has_many :band_instruments
	has_many :instruments, through: :band_instruments
	has_many :gigs

class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :url
      t.string :notes
    end
  end
end

================================================================
