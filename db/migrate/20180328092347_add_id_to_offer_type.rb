class AddIdToOfferType < ActiveRecord::Migration[5.1]
  def change
  	add_column :offer_types, :offer_types_id, :integer
  end
end
