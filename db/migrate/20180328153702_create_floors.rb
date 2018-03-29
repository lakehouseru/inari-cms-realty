class CreateFloors < ActiveRecord::Migration[5.1]
  def change
    create_table :floors do |t|
      t.string :name
      t.text :description
      t.integer :building_id

      t.timestamps
    end
  end
end
