class AddPublishedAtToFacility < ActiveRecord::Migration[5.1]
  def change
  	add_column :facilities, :published_at, :datetime
  end
end
