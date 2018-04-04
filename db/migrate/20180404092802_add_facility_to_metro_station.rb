class AddFacilityToMetroStation < ActiveRecord::Migration[5.1]
  def change
  	add_column :metro_stations, :facility_id, :integer
  end
end
