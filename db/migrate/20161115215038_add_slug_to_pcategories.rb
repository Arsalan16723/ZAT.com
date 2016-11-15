class AddSlugToPcategories < ActiveRecord::Migration
  def change
    add_column :pcategories, :slug, :string
    add_index :pcategories, :slug, unique: true
  end
end
