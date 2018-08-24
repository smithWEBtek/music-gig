DATA_bands = {
  :band_keys =>
    ["name", "url", "notes"],
  :bands => [
  ['Devo', '#', 'whip it good'],
  ['ACDC', '#', 'we rock' ],
  ['Mark Greel Band', 'http://www.markgreelband.com', 'best in live music'],
  ['Afrika Gente', 'http://www.afrikagente.com', 'Latin jazz, African drumming'],
  ['Vibra Tropicale', 'https://www.facebook.com/events/203120453618083/', 'Latin jazz'],
  ['Sabor Picante', 'http://saborpicante.com/', 'pure Salsa'],
  ['BStrio', 'http://www.bradsmithtrio.com', 'tunes you know, grooved differently']
  ]
}

def make_bands
  DATA_bands[:bands].each do |band|
    new_band = Band.new
    band.each_with_index do |attribute, i|
      new_band.send(DATA_bands[:band_keys][i]+"=", attribute)
    end
    new_band.save
  end
end

DATA_contacts = {
  :contact_keys =>
		["email", "facebook", "fname", "lname", "notes", "phone", "url", "notes"],
  :contacts => [
	["max@abc.com", "max@facebook.com", "Max", "Stempia", "good keys player", "919-311-2311", "http://www.maxstempia.com"]
  ]
}

def make_contacts
  DATA_contacts[:contacts].each do |contact|
    new_contact = Contact.new
    contact.each_with_index do |attribute, i|
      new_contact.send(DATA_contacts[:contact_keys][i]+"=", attribute)
    end
    new_contact.save
  end
end

DATA_band_contacts = {
  :band_contact_keys =>
    ["band_id", "contact_id"],
  :band_contacts => [
	[1,1],
	[2,1],
	[3,1],
	[4,1],
	[5,1]
  ]
}

def make_band_contacts
  DATA_band_contacts[:band_contacts].each do |band_contact|
    new_band_contact = BandContact.new
    band_contact.each_with_index do |attribute, i|
      new_band_contact.send(DATA_band_contacts[:band_contact_keys][i]+"=", attribute)
    end
    new_band_contact.save
  end
end

DATA_venues = {
  :venue_keys =>
    ["address", "booking_email", "main_contact_id", "name", "notes", "phone", "url"],
  :venues => [
  ['123 Main', 'gigs@grog.com', '1', 'The Grog', 'bar, downstairs', '603-444-1112', 'http://thegrog.com'],
  ['345 Elm', 'gigs@acme.com', '2', 'Acme Bar', 'indie bar', '603-321-1322', 'http://acmebar.com'],
  ['13 Oak', 'gigs@strangebrew.com', '3', 'The Grog', 'college hipster beer bar', '603-214-1132', 'http://strangebrew.com']
  ]
}

def make_venues
  DATA_venues[:venues].each do |venue|
    new_venue = Venue.new
    venue.each_with_index do |attribute, i|
      new_venue.send(DATA_venues[:venue_keys][i]+"=", attribute)
    end
    new_venue.save
  end
end

def main
	make_bands
	make_contacts
	make_venues
	# make_gigs
	# make_songs
	make_band_contacts
	# make_band_intruments
	# make_band_gigs
end

main