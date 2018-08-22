180821

Change model to music gig database

Gig (formerly Lesson)
	venue_id
	band_id
	gig_date
	load_in
	downbeat
	tear_down
	food?
	dress
	parking
	gig_notes
	pay

	belongs_to :band
	belongs_to :venue
	has_many :songs
	has_many :song_resources, through: :songs

Venue
	name
	address
	url
	phone
	booking_email
	main_contact_id
	notes
	has_many :gigs
	has_many :gig_contacts
	has_many :contacts, through: :gig_contacts

Instrument (formerly Student)
	name
	description

	has_many :band_instruments
	has_many :bands, through: :band_instruments

Contact
	name
	address
	phone
	email
	url
	
	has_many :instruments
	has_many :band_contacts
	has_many :bands, through: :band_contacts

	has_many :venue_contacts
	has_many :venues, through: :venue_contacts

Song
	name
	description
	has_many :song_resources

SongResource
	song_id
	name
	format
	key
	url
	belongs_to :song

Band (formerly Teacher)
	name
	description
	has_many :band_contacts
	has_many :contacts, through: :band_contacts
	has_many :instruments
	has_many :gigs

