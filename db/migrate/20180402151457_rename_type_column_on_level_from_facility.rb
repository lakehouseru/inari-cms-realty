class RenameTypeColumnOnLevelFromFacility < ActiveRecord::Migration[5.1]
  def change
  	change_column :facilities, :level, :string
  end
end
