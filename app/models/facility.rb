class Facility < ApplicationRecord
	belongs_to :gallery
	has_many :metro_station
	belongs_to :okrug
	belongs_to :user
	belongs_to :region
	belongs_to :facility_type
	has_many :building
	has_many :offer

	enum level: ['1', '2', '3', '4', '5', '6']

end