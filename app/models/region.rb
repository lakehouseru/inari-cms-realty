class Region < ApplicationRecord
	has_many :facility

	validates :name,  presence: true
	validates :name, uniqueness: true
end
