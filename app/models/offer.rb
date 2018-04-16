class Offer < ApplicationRecord
	belongs_to :gallery
	belongs_to :offer_type
	belongs_to :floor
	belongs_to :building
	belongs_to :building_type
	belongs_to :facility
	belongs_to :price_type

	validates :name, :gallery, :offer_type, :floor, :price, :price_type, :square, :building, :facility,  presence: true
	validates :name, uniqueness: true
end
