class Offer < ApplicationRecord
	belongs_to :gallery
	belongs_to :offer_type
	belongs_to :floor
	belongs_to :building
	belongs_to :building_type
	belongs_to :facility
	belongs_to :price_type
end
