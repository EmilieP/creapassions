module Creapassions
  class Engine < ::Rails::Engine
    initializer "creapassions.assets.precompile" do |app|
      # app.config.assets.precompile += %w(application.css.scss)
    end
  end
end
