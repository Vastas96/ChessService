require_relative 'boot'
require 'yaml'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChessService
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths << Rails.root.join('app/src')
    # config.api_only = true
    # config.debug_exception_response_format = :default
    ::Conf = YAML::load(File.open('config.yml'))
  end
end
