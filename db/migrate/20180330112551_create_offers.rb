class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :status
      t.integer :gallery_id
      t.integer :offer_type_id
      t.integer :floor_id
      t.integer :building_id
      t.integer :facility_id
      t.datetime :published_at
      t.integer :price
      t.integer :price_type_id
      t.integer :square
      t.text :description

      t.timestamps
    end
  end
end
