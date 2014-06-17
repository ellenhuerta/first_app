class AddTwitterUrlAndFacebookUrlToRefineryWriters < ActiveRecord::Migration
  def change
    add_column :refinery_writers, :twitter_url, :string
    add_column :refinery_writers, :facebook_url, :string
  end
end
