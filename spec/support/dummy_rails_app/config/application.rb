require File.expand_path('../boot', __FILE__)

require 'rails'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'
require 'material_design_lite-sass'

module DummyRailsApp
  class Application < Rails::Application
  end
end
