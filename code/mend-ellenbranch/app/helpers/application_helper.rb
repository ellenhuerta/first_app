module ApplicationHelper

  # Creates a dropdown menu with items matching Refinery pages
  # and tags/css matching Foundation markup
  #
  # Options:
  # * +:menu_tag+ - A wrapper for the lists
  # * +:dom_id+ - The dom id for the wrapper
  # * +:css+ - The css class for the wrapper
  # * +:list_dropdown_css+ - The css class of the submenu list
  # * +:list_item_dropdown_css+ - The css class of the main menu item that has a dropdown
  # * +:list_tag_css+ - The css class of the main menu
  # * +:selected_css+ - The css class denoting a selected/active menu item
  def zurb_menu(items, options = {})
    presenter = Refinery::Pages::ZurbMenuPresenter.new(items, self)
    %w(menu_tag dom_id css list_dropdown_css list_item_dropdown_css list_tag_css selected_css).map(&:to_sym).each do |k|
      presenter.send("#{k}=", options[k]) if options.has_key?(k)
    end
    presenter
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      safe_concat(render(association.to_s.singularize + "_fields", :f => builder))
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

  def homepage_class
    if controller_name == 'posts' and action_name == 'index'
      'home'
    end
  end

end