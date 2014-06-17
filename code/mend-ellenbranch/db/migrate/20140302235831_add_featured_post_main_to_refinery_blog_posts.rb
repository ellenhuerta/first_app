class AddFeaturedPostMainToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :featured_post_main, :boolean, :default => false
  end
end
