class Building < ApplicationRecord
	belongs_to :facility
	has_many :floor
	has_many :offer

	validates :name, :facility,  presence: true
end
