class CreateMetroLines < ActiveRecord::Migration[5.1]
  def change
    create_table :metro_lines do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
