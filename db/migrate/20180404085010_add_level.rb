class AddLevel < ActiveRecord::Migration[5.1]
  def change
  	add_column :facilities, :level, :integer
  end
end
