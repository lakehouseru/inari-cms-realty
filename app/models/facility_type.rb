class FacilityType < ApplicationRecord
	belongs_to :building
	has_many :facility
	has_many :offer
end
