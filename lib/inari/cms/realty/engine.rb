module Inari
  module Cms
    module Realty
      class Engine < ::Rails::Engine
        config.i18n.load_path += Dir[Engine.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

        initializer :append_migrations do |app|
	        config.i18n.load_path += Dir[Engine.root.join('config', 'locales', '**', '*.{rb,yml}')]
	        unless app.root.to_s.match root.to_s
	          config.paths["db/migrate"].expanded.each do |expanded_path|
	            app.config.paths["db/migrate"] << expanded_path
	          end
	        end
	    end
      end
    end
  end
end
