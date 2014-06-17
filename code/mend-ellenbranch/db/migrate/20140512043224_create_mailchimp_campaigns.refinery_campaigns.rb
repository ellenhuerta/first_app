# This migration comes from refinery_campaigns (originally 1)
class CreateMailchimpCampaigns < ActiveRecord::Migration

  def up
    create_table :refinery_mailchimp_campaigns do |t|
      t.string :subject
      t.string :mailchimp_campaing_id
      t.string :mailchimp_list_id
      t.string :mailchimp_template_id
      t.string :from_email
      t.string :from_name
      t.string :to_name
      t.text :body
      t.datetime :sent_at
      t.datetime :scheduled_at
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-mailchimp"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/mailchimp/campaigns"})
    end

    drop_table :refinery_mailchimp_campaigns

  end

end
