require "administrate/base_dashboard"

class OfferTypeDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
      id: Field::Number,
      name: Field::String,
      description:  WysiwygField,
      created_at: Field::DateTime,
      updated_at: Field::DateTime,
      seo_field: Field::BelongsTo
  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :name,
      :created_at,

  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
      :name,
      :description
  ]

  FORM_ATTRIBUTES = [\
      :name,
      :description,
      :seo_field
  ]
  def display_resource(item)
    item.name
  end
end