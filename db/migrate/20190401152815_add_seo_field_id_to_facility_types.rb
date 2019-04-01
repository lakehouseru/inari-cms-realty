class AddSeoFieldIdToFacilityTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :facility_types, :seo_field_id, :integer
  end
end
