class MetroLine < ApplicationRecord
	has_many :metro_stations

	validates :name, :color,  presence: true
	validates :name, uniqueness: true
end
