class MetroLine < ApplicationRecord
	has_many :metro_station

	validates :name, :color,  presence: true
	validates :name, uniqueness: true
end
