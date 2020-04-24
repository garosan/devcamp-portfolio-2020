class AddPostStatusToBlogPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_posts, :status, :integer, default: 0
  end
end
