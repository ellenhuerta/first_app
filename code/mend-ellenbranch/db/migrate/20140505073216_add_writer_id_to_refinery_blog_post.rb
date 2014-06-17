class AddWriterIdToRefineryBlogPost < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :writer_id, :integer
  end
end
