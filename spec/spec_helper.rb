$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../support/dummy_rails_app/config/environment.rb', __FILE__)
require 'material_design_lite-sass'

RSpec.configure do |config|
  config.before(:suite) do
    gem_path = File.expand_path('..', File.dirname(__FILE__))
    tmp_dir_path = File.join(gem_path, 'tmp')
    FileUtils.mkdir_p(tmp_dir_path)
  end

  config.after(:suite) do
    FileUtils.rm_rf('tmp', secure: true)
  end
end
