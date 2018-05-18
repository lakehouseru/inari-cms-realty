class Facility < ApplicationRecord
	belongs_to :gallery
	has_and_belongs_to_many :metro_stations
	belongs_to :okrug
	belongs_to :user
	belongs_to :region
	belongs_to :facility_type
	has_many :building
	has_many :offer

	enum level: ['1', '2', '3', '4', '5', '6']

	validates :name, :gallery, :adress, :square_gla, :square, :okrug, :facility_type, :user,  presence: true
	validates :name, uniqueness: true

end