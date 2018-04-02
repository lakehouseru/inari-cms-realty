require "administrate/base_dashboard"

class FacilityDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    gallery: Field::BelongsTo,
    metro_station: Field::BelongsTo,
    okrug: Field::BelongsTo,
    user: Field::BelongsTo,
    facility_type: Field::BelongsTo,
    published_at: Field::DatePicker,
    id: Field::Number,
    name: Field::String,
    square: Field::Number,
    adress: Field::String,
    floors: Field::Number,
    level: SelectField,
    distance: Field::Number,
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
    :metro_station,
    :okrug,
    :user,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :gallery,
    :metro_station,
    :okrug,
    :user,
    :facility_type,
    :id,
    :name,
    :square,
    :adress,
    :floors,
    :level,
    :distance,
    :description,
    :published_at,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gallery,
    :metro_station,
    :okrug,
    :user,
    :facility_type,
    :name,
    :square,
    :adress,
    :floors,
    :level,
    :distance,
    :description,
    :published_at
  ].freeze

  # Overwrite this method to customize how facilities are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(facility)
  #   "Facility ##{facility.id}"
  # end
  def display_resource(item)
    item.name
  end
end
