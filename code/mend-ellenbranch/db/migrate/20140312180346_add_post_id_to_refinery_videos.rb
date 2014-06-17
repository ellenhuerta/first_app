class AddPostIdToRefineryVideos < ActiveRecord::Migration
  def change
    add_column :refinery_videos, :post_id, :integer
  end
end
