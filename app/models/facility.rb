class Facility < ApplicationRecord
	belongs_to :gallery
	belongs_to :metro_station
	belongs_to :okrug
	belongs_to :user
	belongs_to :facility_type
end
