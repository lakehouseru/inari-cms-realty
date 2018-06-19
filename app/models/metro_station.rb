class MetroStation < ApplicationRecord
	belongs_to :metro_line
	has_and_belongs_to_many :facilities

	validates :name, :metro_line,  presence: true
end
