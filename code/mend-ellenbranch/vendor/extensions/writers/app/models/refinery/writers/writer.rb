module Refinery
  module Writers
    class Writer < Refinery::Core::BaseModel
      self.table_name = 'refinery_writers'

      attr_accessible :name, :bio, :photo_id, :position, :twitter_url, :facebook_url, :web_url 

      validates :name, :presence => true 
      validates :photo_id, :presence => true
      validates :bio, :presence => true 

      belongs_to :photo, :class_name => '::Refinery::Image'
      has_many :posts, :class_name => '::Refinery::Blog::Post'
    end
  end
end
