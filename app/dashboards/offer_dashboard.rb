require "administrate/base_dashboard"

class OfferDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    gallery: Field::BelongsTo,
    offer_type: Field::BelongsTo,
    floor: Field::BelongsTo,
    building: Field::BelongsTo,
    facility: Field::BelongsTo,
    price_type: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    status: Field::Number,
    published_at: Field::DateTime,
    price: Field::Number,
    square: Field::Number,
    description: WysiwygField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :gallery,
    :offer_type,
    :floor,
    :building,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :gallery,
    :offer_type,
    :floor,
    :building,
    :facility,
    :price_type,
    :id,
    :name,
    :status,
    :published_at,
    :price,
    :square,
    :description,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gallery,
    :offer_type,
    :floor,
    :building,
    :facility,
    :price_type,
    :name,
    :status,
    :published_at,
    :price,
    :square,
    :description,
  ].freeze

  # Overwrite this method to customize how offers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(offer)
  #   "Offer ##{offer.id}"
  # end
  def display_resource(item)
    item.name
  end
end
