class RemoveLevel < ActiveRecord::Migration[5.1]
  def change
  	remove_column :facilities, :level
  end
end
