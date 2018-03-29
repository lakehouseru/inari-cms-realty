class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.integer :gallery_id
      t.integer :square
      t.string :adress
      t.integer :metro_station_id
      t.integer :okrug_id
      t.integer :floors
      t.integer :class
      t.integer :distance
      t.text :description
      t.integer :user_id
      t.integer :facility_type_id

      t.timestamps
    end
  end
end
