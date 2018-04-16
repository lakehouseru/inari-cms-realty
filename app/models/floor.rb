class Floor < ApplicationRecord
	belongs_to :building
	has_many :offer

	validates :building, :name,  presence: true
	validates :name, uniqueness: true
end
