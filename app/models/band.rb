class Band < ApplicationRecord
	has_many :contacts
	has_many :instruments
	has_many :gigs
end
