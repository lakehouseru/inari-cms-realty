class MetroStation < ApplicationRecord
	belongs_to :metro_line
	belongs_to :facility
end
