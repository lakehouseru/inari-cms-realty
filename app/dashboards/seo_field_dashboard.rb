require "administrate/base_dashboard"

class SeoFieldDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
      id: Field::String,
      title: Field::String,
      keywords: Field::String,
      description:  Field::String,
      uri:  Field::String,
      slug:  Field::String,
      facilities: Field::HasMany,
      offers: Field::HasMany,
      buildings: Field::HasMany,
      building_types: Field::HasMany,
      offer_types: Field::HasMany,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
      :id,
      :title,
      :keywords,
      :description,
      :facilities,

  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
      :title,
      :keywords,
      :description
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
      :title,
      :keywords,
      :description,
      :facilities,
      :offers,
      :buildings,
      :building_types,
      :offer_types,
      :uri,
      :slug,

  ].freeze

  # Overwrite this method to customize how seo fields are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(seo_field)
     "Набор meta-полей:  #{seo_field.title}"
   end
end
