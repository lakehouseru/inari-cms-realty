class AddSeoFieldIdToBuildings < ActiveRecord::Migration[5.1]
  def change
    add_column :buildings, :seo_field_id, :integer
    add_column :building_types, :seo_field_id, :integer
    add_column :offers, :seo_field_id, :integer
    add_column :offer_types, :seo_field_id, :integer
  end
end
