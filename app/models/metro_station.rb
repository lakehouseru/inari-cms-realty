class MetroStation < ApplicationRecord
	belongs_to :metro_line
	belongs_to :facility

	validates :name, :metro_line,  presence: true
	validates :name, uniqueness: true
end
