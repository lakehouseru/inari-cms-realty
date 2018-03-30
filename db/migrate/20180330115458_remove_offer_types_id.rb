class RemoveOfferTypesId < ActiveRecord::Migration[5.1]
  def change
  	remove_column :offer_types, :offer_types_id, :integer
  	remove_column :price_types, :price_id, :integer
  end
end
