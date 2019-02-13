class FacilityType < ApplicationRecord
	belongs_to :building
	has_many :facility
	has_many :offer
  belongs_to :seo_field

	validates :name,  presence: true
end
