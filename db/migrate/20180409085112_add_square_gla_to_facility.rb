class AddSquareGlaToFacility < ActiveRecord::Migration[5.1]
  def change
  	add_column :facilities, :square_gla, :integer
  end
end
