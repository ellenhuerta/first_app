module Refinery
  module Writers
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Writers

      engine_name :refinery_writers

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "writers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.writers_admin_writers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/writers/writer',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Writers)
      end
    end
  end
end
