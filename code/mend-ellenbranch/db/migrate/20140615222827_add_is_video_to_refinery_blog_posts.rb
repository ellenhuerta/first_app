class AddIsVideoToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :is_video, :boolean, :default => false
  end
end
