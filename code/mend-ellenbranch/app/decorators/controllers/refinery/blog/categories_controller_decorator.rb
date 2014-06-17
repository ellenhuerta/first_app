Refinery::Blog::CategoriesController.class_eval do
  before_filter :show_mantra, :except => [:show]
  
  def show
    @category = Refinery::Blog::Category.find(params[:id])
    @posts = @category.posts.live.includes(:categories).page(params[:page])
    @tags = @posts.tag_counts
  end
end