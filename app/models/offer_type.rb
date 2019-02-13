class OfferType < ApplicationRecord
	has_many :offer
  belongs_to :seo_field


	validates :name,  presence: true
	validates :name, uniqueness: true
end
