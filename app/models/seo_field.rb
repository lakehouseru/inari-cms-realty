class SeoField < ApplicationRecord
  has_many :facilities
  has_many :buildings
  has_many :offers
  has_many :building_types
  has_many :offer_types
  has_many :facility_types
end
