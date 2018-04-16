class PriceType < ApplicationRecord
	has_many :offer

	validates :name,  presence: true
	validates :name, uniqueness: true
end
