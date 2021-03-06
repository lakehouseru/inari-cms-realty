class Facility < ApplicationRecord
	belongs_to :gallery
	has_and_belongs_to_many :metro_stations
	belongs_to :okrug
	belongs_to :user
	belongs_to :region
	belongs_to :facility_type
	has_many :building
	has_many :offers

	enum level: ['1', '2', '3', '4', '5', '6']

	validates :name, :gallery, :adress, :square_gla, :square, :facility_type, :user,  presence: true

  mount_uploaders :files, FileUploader

	with_options prefix: true, allow_nil: false do
    delegate :name,         to: :facility_type
  end

  geocoded_by :adress

  after_validation :geocode

  before_destroy :clear_stations

  def key_image
    gallery.gallery_attachments.order(:sort).first.image || false
	end

  def clear_stations
		metro_stations.clear
	end
end