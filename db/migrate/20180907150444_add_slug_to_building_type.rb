class AddSlugToBuildingType < ActiveRecord::Migration[5.1]
  def change
    add_column :building_types, :slug, :string
    add_index :building_types, :slug, unique: true
  end
end
