class MetroStation < ApplicationRecord
	belongs_to :metro_line
	has_many :facility
end
