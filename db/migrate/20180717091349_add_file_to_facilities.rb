class AddFileToFacilities < ActiveRecord::Migration[5.1]
  def change
    add_column :facilities, :files, :string, array: true
  end
end
