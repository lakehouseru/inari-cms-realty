class BuildingType < ApplicationRecord
	has_many :offers
  extend FriendlyId
  friendly_id :name, use: :slugged

	validates :name,  presence: true
	validates :name, uniqueness: true
end
