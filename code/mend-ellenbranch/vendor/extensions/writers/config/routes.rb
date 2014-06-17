Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :writers do
    resources :writers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :writers, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :writers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
