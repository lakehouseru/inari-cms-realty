class CreateInariCmsRealtyOkrugs < ActiveRecord::Migration[5.1]
  def change
    create_table :okrugs do |t|
      t.string :name

      t.timestamps
    end
  end
end
