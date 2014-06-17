# == Schema Information
#
# Table name: refinery_blog_categories_blog_posts
#
#  id               :integer          not null, primary key
#  blog_category_id :integer
#  blog_post_id     :integer
#

module Refinery
  module Blog
    class Categorization < ActiveRecord::Base

      self.table_name = 'refinery_blog_categories_blog_posts'
      belongs_to :blog_post, :class_name => 'Refinery::Blog::Post', :foreign_key => :blog_post_id
      belongs_to :blog_category, :class_name => 'Refinery::Blog::Category', :foreign_key => :blog_category_id

      attr_accessible :blog_category_id, :blog_post_id
    end
  end
end
