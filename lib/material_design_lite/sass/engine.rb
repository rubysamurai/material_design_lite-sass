module MaterialDesignLite
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'material_design_lite-sass.assets.precompile' do |app|
          %w(stylesheets javascripts).each do |sub|
            app.config.assets.paths << root.join('vendor/assets', sub).to_s
          end
        end
      end
    end
  end
end
