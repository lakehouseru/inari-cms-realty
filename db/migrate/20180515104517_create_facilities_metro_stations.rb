class CreateFacilitiesMetroStations < ActiveRecord::Migration[5.1]
  def change
    remove_column :metro_stations, :facility_id, :integer
    remove_column :facilities, :metro_station_id, :integer

    create_table :facilities_metro_stations, id: false do |t|
      t.belongs_to :facility, index: true
      t.belongs_to :metro_station, index: true
    end
  end
end
