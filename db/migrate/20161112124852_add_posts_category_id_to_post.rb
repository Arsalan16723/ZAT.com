class AddPostsCategoryIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :posts_category_id, :integer
  end
end
