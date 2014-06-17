class CreateWritersWriters < ActiveRecord::Migration

  def up
    create_table :refinery_writers do |t|
      t.string :name
      t.string :bio
      t.string :web_url
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-writers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/writers/writers"})
    end

    drop_table :refinery_writers

  end

end
