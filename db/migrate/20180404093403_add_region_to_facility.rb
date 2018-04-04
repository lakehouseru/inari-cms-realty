class AddRegionToFacility < ActiveRecord::Migration[5.1]
  def change
  	add_column :facilities, :region_id, :integer
  end
end
