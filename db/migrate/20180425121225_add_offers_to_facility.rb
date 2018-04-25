class AddOffersToFacility < ActiveRecord::Migration[5.1]
  def change
  	add_column :facilities, :offer_id, :integer
  end
end
