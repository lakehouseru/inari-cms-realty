class AddBuildingTypeToOffer < ActiveRecord::Migration[5.1]
  def change
  	add_column :offers, :building_type_id, :integer
  end
end
