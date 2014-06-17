class RemoveLikesAndAuthorIdFromRefineryBlogPosts < ActiveRecord::Migration
  def up
    remove_column :refinery_blog_posts, :likes
    remove_column :refinery_blog_posts, :author_id
  end

  def down
    add_column :refinery_blog_posts, :author_id, :integer
    add_column :refinery_blog_posts, :likes, :integer
  end
end
