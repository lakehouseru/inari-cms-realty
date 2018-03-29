class RenameColumnFromFacility < ActiveRecord::Migration[5.1]
  def change
  	rename_column :facilities, :class, :level
  end
end
