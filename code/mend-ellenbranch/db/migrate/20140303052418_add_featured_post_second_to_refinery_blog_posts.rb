class AddFeaturedPostSecondToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :featured_post_second, :boolean, :default => false
  end
end
