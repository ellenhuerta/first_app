Refinery::Blog::PostsController.class_eval do

  def index
    @non_featured_posts = Refinery::Blog::Post.where( :featured_post => false, :draft => false ).page(params[:page])
    @featured_posts = Refinery::Blog::Post.live.featured_posts
    @emotion_tags = @non_featured_posts.live.tag_counts_on(:emotion)
  end
 	
 	def show
    render layout: 'post-layout'
 	end

  def search
    @posts = Post.search(params[:search]).page(params[:page])
    render "refinery/blog/posts/index"
  end

  def subscribe
    list_id = "38a93c6301"  
    email = params[:email][:address]
    if !email.blank?  
      result = mailchimp.lists.subscribe({
        :id => list_id,
        :email => {:email => email }
        })
      respond_to do |format|   
        if result['status'] == 'error'
          format.js  { render 'subscribed'}
        else !result.has_key?("status")
          format.js { render 'thanks'}
        end 
      end 
    end
  end
    protected 
      def mailchimp
       @mailchimp ||= Gibbon::API.new
      end
end