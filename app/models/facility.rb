class Facility < ApplicationRecord
	belongs_to :gallery
	belongs_to :metro_station
	belongs_to :okrug
	belongs_to :user
	belongs_to :facility_type
	has_many :building
	has_many :offer
end
