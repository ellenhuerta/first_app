class AddFeaturedPostToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :featured_post, :boolean, :default => false
  end
end
