module MaterialDesignLite
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'material_design_lite-sass.assets.precompile' do |app|
          %w(stylesheets javascripts fonts images).each do |sub|
            app.config.assets.paths << root.join('vendor/assets', sub).to_s
          end
          app.config.assets.precompile << %r(material-icons/MaterialIcons-Regular\.(?:eot|ttf|woff|woff2?)$)
          app.config.assets.precompile << %r(roboto/Roboto-[\w-]+\.(?:ttf|woff|woff2?)$)
          app.config.assets.precompile += %w[*.svg]
        end
      end
    end
  end
end
