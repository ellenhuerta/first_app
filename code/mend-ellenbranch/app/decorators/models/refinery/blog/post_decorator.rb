Refinery::Blog::Post.class_eval do

  validates :emotion_list, presence: true
  validates :image, presence: true

  #scope :non_featured_posts, :conditions => { :featured_post => false }
  scope :featured_posts    , :conditions => { :featured_post => true }

  acts_as_taggable_on :emotion, :advice, :stories
  attr_accessible :emotion_list
  attr_accessible :image_id
  attr_accessible :featured_post
  attr_accessible :is_video
  attr_accessible :writer_id
  acts_as_indexed :fields => [:title, :body]

 	belongs_to :image
  belongs_to :writer, :class_name => '::Refinery::Writers::Writer'

  self.per_page = 6

  def search(search_string="")
    Post.includes(:categories,:tags).live.where(
      "refinery_blog_posts.title like (?) or refinery_blog_posts.body like (?) 
        or refinery_blog_categories.title like (?) or tags.name like (?)",
        "%#{search_string}%","%#{search_string}%","%#{search_string}%","%#{search_string}%")
  end
end
