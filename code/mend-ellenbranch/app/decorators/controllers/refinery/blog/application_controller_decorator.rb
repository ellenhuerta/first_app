ApplicationController.class_eval do
  # your controller logic goes here
  before_filter :show_mantra

  protected
	  def show_mantra
	    @show_mantra = true
	  end

 end