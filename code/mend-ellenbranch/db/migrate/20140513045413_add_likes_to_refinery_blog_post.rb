class AddLikesToRefineryBlogPost < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :likes, :integer
  end
end
