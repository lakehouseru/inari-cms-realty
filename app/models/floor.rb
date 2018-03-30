class Floor < ApplicationRecord
	belongs_to :building
	has_many :offer
end
