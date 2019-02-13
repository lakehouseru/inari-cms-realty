class Building < ApplicationRecord
	belongs_to :facility
	has_many :floor
	has_many :offer
  belongs_to :seo_field


	validates :name, :facility,  presence: true
end
