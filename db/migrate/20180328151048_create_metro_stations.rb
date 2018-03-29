class CreateMetroStations < ActiveRecord::Migration[5.1]
  def change
    create_table :metro_stations do |t|
      t.string :name
      t.integer :metro_line_id

      t.timestamps
    end
  end
end
