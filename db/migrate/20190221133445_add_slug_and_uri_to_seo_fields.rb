class AddSlugAndUriToSeoFields < ActiveRecord::Migration[5.1]
  def change
    add_column :seo_fields, :slug, :string
    add_column :seo_fields, :uri, :string
  end
end
