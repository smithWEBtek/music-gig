class Instrument < ApplicationRecord
	has_many :band_instruments
	has_many :bands, through: :band_instruments
end
