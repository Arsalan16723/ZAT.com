class AddPcategoryIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pcategory_id, :integer
  end
end
