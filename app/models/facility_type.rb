class FacilityType < ApplicationRecord
	belongs_to :building
	has_many :facility
	has_many :offer

	validates :name,  presence: true
	validates :name, uniqueness: true
end
