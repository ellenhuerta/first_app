class RemoveFeaturedPostMainAndFeaturedPostSecondFromRefineryBlogPosts < ActiveRecord::Migration
  def up
    remove_column :refinery_blog_posts, :featured_post_main
    remove_column :refinery_blog_posts, :featured_post_second
  end

  def down
    add_column :refinery_blog_posts, :featured_post_second, :string
    add_column :refinery_blog_posts, :featured_post_main, :string
  end
end
