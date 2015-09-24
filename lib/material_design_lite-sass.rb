module MaterialDesignLite
  module Sass
    class << self
      def load!
        if defined?(::Rails)
          register_rails_engine
        elsif defined?(::Sprockets)
          register_sprockets
        end

        configure_sass
      end

      def gem_path
        @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
      end

      def stylesheets_path
        File.join(gem_path, 'vendor/assets/stylesheets')
      end

      def javascripts_path
        File.join(gem_path, 'vendor/assets/javascripts')
      end

      def fonts_path
        File.join(gem_path, 'vendor/assets/fonts')
      end

      private

        def configure_sass
          require 'sass'

          ::Sass.load_paths << stylesheets_path
        end

        def register_rails_engine
          require 'material_design_lite/sass/engine'
          require 'autoprefixer-rails'
        end

        def register_sprockets
          Sprockets.append_path(stylesheets_path)
          Sprockets.append_path(javascripts_path)
          Sprockets.append_path(fonts_path)
        end
    end
  end
end

MaterialDesignLite::Sass.load!
