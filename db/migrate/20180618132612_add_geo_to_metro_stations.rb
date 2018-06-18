class AddGeoToMetroStations < ActiveRecord::Migration[5.1]
  def change
    add_column :metro_stations, :latitude, :float
    add_column :metro_stations, :longitude, :float
  end
end
