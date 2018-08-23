DATA_contacts = {
  :band_contact_keys =>
		["email", "facebook", "fname", "lname", "notes", "phone", "url", "notes"]
  :contacts => [
	["max@abc.com", "max@facebook.com", "Max", "Stempia", "good keys player", "919-311-2311", "http://www.maxstempia.com"],
	[2,1],
	[3,1],
	[4,1],
	[5,1]
  ]
}

def make_contacts
  DATA_contacts[:contacts].each do |band_contact|
    new_band_contact = BandContact.new
    band_contact.each_with_index do |attribute, i|
      new_band_contact.send(DATA_contacts[:band_contact_keys][i]+"=", attribute)
    end
    new_band_contact.save
  end
end