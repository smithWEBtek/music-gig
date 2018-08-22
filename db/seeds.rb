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

def main
	make_bands
end

main