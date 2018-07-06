class Offer < ApplicationRecord
	belongs_to :gallery
	belongs_to :offer_type
	belongs_to :floor
	belongs_to :building
	belongs_to :building_type
	belongs_to :facility
	belongs_to :price_type

	validates :name, :gallery, :offer_type, :floor, :price, :price_type, :square, :building, :facility_id,  presence: true

  with_options prefix: true, allow_nil: false do
    delegate :name, :adress, :facility_type_name, :level, :okrug, :region,  to: :facility
    delegate :name,                                                         to: :floor
    delegate :name,                                                         to: :building_type
  end


  def key_image
    gallery.gallery_attachments.order(:sort).first.image || false
  end

  def metro_stations
    facility.metro_stations
  end

  def metro_stations_titles
    facility.metro_stations.pluck(:name)
  end

  def neighbour_offers
    facility.offers.where.not(id:id)
  end

end
