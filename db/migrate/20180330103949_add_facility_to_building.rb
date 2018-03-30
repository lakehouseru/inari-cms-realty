class AddFacilityToBuilding < ActiveRecord::Migration[5.1]
  def change
  	add_column :buildings, :facility_id, :integer
  end
end
