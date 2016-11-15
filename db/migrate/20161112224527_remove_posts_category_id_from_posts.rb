class RemovePostsCategoryIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :posts_category_id, :integer
  end
end
