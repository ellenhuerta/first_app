# == Route Map (Updated 2014-02-18 16:41)
#
# refinery  / Refinery::Core::Engine
#
# Routes for Refinery::Core::Engine:
#                                        root GET    /                                                         refinery/pages#home
#                                        page GET    /pages/:id(.:format)                                      refinery/pages#show
#                   pages_admin_preview_pages POST   /refinery/pages/preview(.:format)                         refinery/pages/admin/preview#show
#                    pages_admin_preview_page PUT    /refinery/pages/preview/*path(.:format)                   refinery/pages/admin/preview#show
#                                       admin GET    /refinery/pages/*path/edit(.:format)                      refinery/admin/pages#edit
#                        admin_children_pages GET    /refinery/pages/*path/children(.:format)                  refinery/admin/pages#children
#                                             PUT    /refinery/pages/*path(.:format)                           refinery/admin/pages#update
#                                             DELETE /refinery/pages/*path(.:format)                           refinery/admin/pages#destroy
#                update_positions_admin_pages POST   /refinery/pages/update_positions(.:format)                refinery/admin/pages#update_positions
#                                 admin_pages GET    /refinery/pages(.:format)                                 refinery/admin/pages#index
#                                             POST   /refinery/pages(.:format)                                 refinery/admin/pages#create
#                              new_admin_page GET    /refinery/pages/new(.:format)                             refinery/admin/pages#new
#                             edit_admin_page GET    /refinery/pages/:id/edit(.:format)                        refinery/admin/pages#edit
#                                  admin_page PUT    /refinery/pages/:id(.:format)                             refinery/admin/pages#update
#                                             DELETE /refinery/pages/:id(.:format)                             refinery/admin/pages#destroy
#                 link_to_admin_pages_dialogs GET    /refinery/pages_dialogs/link_to(.:format)                 refinery/admin/pages_dialogs#link_to
#                            admin_page_parts POST   /refinery/page_parts(.:format)                            refinery/admin/page_parts#create
#                         new_admin_page_part GET    /refinery/page_parts/new(.:format)                        refinery/admin/page_parts#new
#                             admin_page_part DELETE /refinery/page_parts/:id(.:format)                        refinery/admin/page_parts#destroy
#                                             GET    /system/resources/*dragonfly(.:format)                    <Dragonfly::App name=:refinery_resources >
#                      insert_admin_resources GET    /refinery/resources/insert(.:format)                      refinery/admin/resources#insert
#                             admin_resources GET    /refinery/resources(.:format)                             refinery/admin/resources#index
#                                             POST   /refinery/resources(.:format)                             refinery/admin/resources#create
#                          new_admin_resource GET    /refinery/resources/new(.:format)                         refinery/admin/resources#new
#                         edit_admin_resource GET    /refinery/resources/:id/edit(.:format)                    refinery/admin/resources#edit
#                              admin_resource PUT    /refinery/resources/:id(.:format)                         refinery/admin/resources#update
#                                             DELETE /refinery/resources/:id(.:format)                         refinery/admin/resources#destroy
#                                             GET    /system/images/*dragonfly(.:format)                       <Dragonfly::App name=:refinery_images >
#                         insert_admin_images GET    /refinery/images/insert(.:format)                         refinery/admin/images#insert
#                                admin_images GET    /refinery/images(.:format)                                refinery/admin/images#index
#                                             POST   /refinery/images(.:format)                                refinery/admin/images#create
#                             new_admin_image GET    /refinery/images/new(.:format)                            refinery/admin/images#new
#                            edit_admin_image GET    /refinery/images/:id/edit(.:format)                       refinery/admin/images#edit
#                                 admin_image PUT    /refinery/images/:id(.:format)                            refinery/admin/images#update
#                                             DELETE /refinery/images/:id(.:format)                            refinery/admin/images#destroy
#                             admin_dashboard GET    /refinery/dashboard(.:format)                             refinery/admin/dashboard#index
#                   new_refinery_user_session GET    /refinery/users/login(.:format)                           refinery/sessions#new
#                       refinery_user_session POST   /refinery/users/login(.:format)                           refinery/sessions#create
#               destroy_refinery_user_session DELETE /refinery/users/logout(.:format)                          refinery/sessions#destroy
#                      refinery_user_password POST   /refinery/users/password(.:format)                        refinery/passwords#create
#                  new_refinery_user_password GET    /refinery/users/password/new(.:format)                    refinery/passwords#new
#                 edit_refinery_user_password GET    /refinery/users/password/edit(.:format)                   refinery/passwords#edit
#                                             PUT    /refinery/users/password(.:format)                        refinery/passwords#update
#                                       login GET    /refinery/login(.:format)                                 refinery/sessions#new
#                                      logout GET    /refinery/logout(.:format)                                refinery/sessions#destroy
#                                      signup GET    /refinery/users/register(.:format)                        refinery/users#new
#                                      signup POST   /refinery/users/register(.:format)                        refinery/users#create
#                                 admin_users GET    /refinery/users(.:format)                                 refinery/admin/users#index
#                                             POST   /refinery/users(.:format)                                 refinery/admin/users#create
#                              new_admin_user GET    /refinery/users/new(.:format)                             refinery/admin/users#new
#                             edit_admin_user GET    /refinery/users/:id/edit(.:format)                        refinery/admin/users#edit
#                                  admin_user PUT    /refinery/users/:id(.:format)                             refinery/admin/users#update
#                                             DELETE /refinery/users/:id(.:format)                             refinery/admin/users#destroy
#                                   blog_root        /blog(.:format)                                           refinery/blog/posts#index
#                                   blog_post GET    /blog/posts/:id(.:format)                                 refinery/blog/posts#show
#                               blog_rss_feed        /blog/feed.rss(.:format)                                  refinery/blog/posts#index {:format=>"rss"}
#                               blog_category        /blog/categories/:id(.:format)                            refinery/blog/categories#show
#                               blog_comments        /blog/:id/comments(.:format)                              refinery/blog/posts#comment
#                          blog_archive_posts GET    /blog/archive/:year(/:month)(.:format)                    refinery/blog/posts#archive
#                           blog_tagged_posts GET    /blog/tagged/:tag_id(/:tag_name)(.:format)                refinery/blog/posts#tagged
#                             blog_admin_root        /refinery/blog(.:format)                                  refinery/blog/admin/posts#index
#              uncategorized_blog_admin_posts GET    /refinery/blog/posts/uncategorized(.:format)              refinery/blog/admin/posts#uncategorized
#                       tags_blog_admin_posts GET    /refinery/blog/posts/tags(.:format)                       refinery/blog/admin/posts#tags
#                            blog_admin_posts GET    /refinery/blog/posts(.:format)                            refinery/blog/admin/posts#index
#                                             POST   /refinery/blog/posts(.:format)                            refinery/blog/admin/posts#create
#                         new_blog_admin_post GET    /refinery/blog/posts/new(.:format)                        refinery/blog/admin/posts#new
#                        edit_blog_admin_post GET    /refinery/blog/posts/:id/edit(.:format)                   refinery/blog/admin/posts#edit
#                             blog_admin_post GET    /refinery/blog/posts/:id(.:format)                        refinery/blog/admin/posts#show
#                                             PUT    /refinery/blog/posts/:id(.:format)                        refinery/blog/admin/posts#update
#                                             DELETE /refinery/blog/posts/:id(.:format)                        refinery/blog/admin/posts#destroy
#                       blog_admin_categories GET    /refinery/blog/categories(.:format)                       refinery/blog/admin/categories#index
#                                             POST   /refinery/blog/categories(.:format)                       refinery/blog/admin/categories#create
#                     new_blog_admin_category GET    /refinery/blog/categories/new(.:format)                   refinery/blog/admin/categories#new
#                    edit_blog_admin_category GET    /refinery/blog/categories/:id/edit(.:format)              refinery/blog/admin/categories#edit
#                         blog_admin_category GET    /refinery/blog/categories/:id(.:format)                   refinery/blog/admin/categories#show
#                                             PUT    /refinery/blog/categories/:id(.:format)                   refinery/blog/admin/categories#update
#                                             DELETE /refinery/blog/categories/:id(.:format)                   refinery/blog/admin/categories#destroy
#                approved_blog_admin_comments GET    /refinery/blog/comments/approved(.:format)                refinery/blog/admin/comments#approved
#                rejected_blog_admin_comments GET    /refinery/blog/comments/rejected(.:format)                refinery/blog/admin/comments#rejected
#                  approve_blog_admin_comment POST   /refinery/blog/comments/:id/approve(.:format)             refinery/blog/admin/comments#approve
#                   reject_blog_admin_comment POST   /refinery/blog/comments/:id/reject(.:format)              refinery/blog/admin/comments#reject
#                         blog_admin_comments GET    /refinery/blog/comments(.:format)                         refinery/blog/admin/comments#index
#                                             POST   /refinery/blog/comments(.:format)                         refinery/blog/admin/comments#create
#                      new_blog_admin_comment GET    /refinery/blog/comments/new(.:format)                     refinery/blog/admin/comments#new
#                     edit_blog_admin_comment GET    /refinery/blog/comments/:id/edit(.:format)                refinery/blog/admin/comments#edit
#                          blog_admin_comment GET    /refinery/blog/comments/:id(.:format)                     refinery/blog/admin/comments#show
#                                             PUT    /refinery/blog/comments/:id(.:format)                     refinery/blog/admin/comments#update
#                                             DELETE /refinery/blog/comments/:id(.:format)                     refinery/blog/admin/comments#destroy
# notification_recipients_blog_admin_settings GET    /refinery/blog/settings/notification_recipients(.:format) refinery/blog/admin/settings#notification_recipients
#                                             POST   /refinery/blog/settings/notification_recipients(.:format) refinery/blog/admin/settings#notification_recipients
#              moderation_blog_admin_settings GET    /refinery/blog/settings/moderation(.:format)              refinery/blog/admin/settings#moderation
#                comments_blog_admin_settings GET    /refinery/blog/settings/comments(.:format)                refinery/blog/admin/settings#comments
#                 teasers_blog_admin_settings GET    /refinery/blog/settings/teasers(.:format)                 refinery/blog/admin/settings#teasers
#                         blog_admin_settings GET    /refinery/blog/settings(.:format)                         refinery/blog/admin/settings#index
#                                             POST   /refinery/blog/settings(.:format)                         refinery/blog/admin/settings#create
#                      new_blog_admin_setting GET    /refinery/blog/settings/new(.:format)                     refinery/blog/admin/settings#new
#                     edit_blog_admin_setting GET    /refinery/blog/settings/:id/edit(.:format)                refinery/blog/admin/settings#edit
#                          blog_admin_setting GET    /refinery/blog/settings/:id(.:format)                     refinery/blog/admin/settings#show
#                                             PUT    /refinery/blog/settings/:id(.:format)                     refinery/blog/admin/settings#update
#                                             DELETE /refinery/blog/settings/:id(.:format)                     refinery/blog/admin/settings#destroy
#                              admin_settings GET    /refinery/settings(.:format)                              refinery/admin/settings#index
#                                             POST   /refinery/settings(.:format)                              refinery/admin/settings#create
#                           new_admin_setting GET    /refinery/settings/new(.:format)                          refinery/admin/settings#new
#                          edit_admin_setting GET    /refinery/settings/:id/edit(.:format)                     refinery/admin/settings#edit
#                               admin_setting PUT    /refinery/settings/:id(.:format)                          refinery/admin/settings#update
#                                             DELETE /refinery/settings/:id(.:format)                          refinery/admin/settings#destroy
#                                   wymiframe GET    /wymiframe(/:id)(.:format)                                refinery/fast#wymiframe
#                                     message GET    /refinery/message(.:format)                               refinery/fast#message
#                                  admin_root        /refinery(.:format)                                       refinery/admin/dashboard#index
#                               admin_dialogs GET    /refinery/dialogs(.:format)                               refinery/admin/dialogs#index
#                                admin_dialog GET    /refinery/dialogs/:id(.:format)                           refinery/admin/dialogs#show
#              refinery_update_menu_positions POST   /refinery/update_menu_positions(.:format)                 refinery/admin/core#update_plugin_positions
#                                             GET    /sitemap.xml(.:format)                                    refinery/sitemap#index {:format=>"xml"}
#                                             GET    /refinery/*path(.:format)                                 refinery/admin#error_404
#                             marketable_page GET    /*path(.:format)                                          refinery/pages#show
#


# Your route file resumes here


Mend::Application.routes.draw do
	 
# 	 Refinery::Core::Engine.routes.prepend do
#   get '/about', :to => 'pages#about', :as => :about
# end

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  # set the root route to /blog
  #root :to => 'refinery/blog/posts#index'

  post '/subscribe', :to => 'refinery/blog/posts#subscribe'
  mount Refinery::Core::Engine, :at => '/'
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
