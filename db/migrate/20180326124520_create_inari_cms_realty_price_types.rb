class CreateInariCmsRealtyPriceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :price_types do |t|
      t.string :name
      t.integer :price_id

      t.timestamps
    end
  end
end
