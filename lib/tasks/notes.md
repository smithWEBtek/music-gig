180821

Change model to music gig database

================================================================
Band (formerly Teacher)
	has_many :contacts
	has_many :instruments
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
BandContact
	belongs_to :band
	belongs_to :contact

class CreateBandContact < ActiveRecord::Migration[5.1]
  def change
    create_table :band_contacts do |t|
      t.integer :band_id
      t.integer :contact_id
    end
  end
end
 
================================================================
Contact
	has_many :instruments

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
Gig (formerly Lesson)
	belongs_to :band
	belongs_to :venue
	has_many :songs
	has_many :resources, through: :songs

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
			t.string :fee
    end
  end
end

================================================================
Instrument (formerly Student)

class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :notes
    end
  end
end


================================================================
Resource
	belongs_to :song

class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.integer :song_id
      t.string :name
      t.string :format
      t.string :key
      t.string :url
    end
  end
end

================================================================
Song
	has_many :resources

class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :notes
    end
  end
end


================================================================
Venue
	has_many :gigs
	has_many :contacts

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
