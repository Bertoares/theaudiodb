require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Theaudiodb
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

       # estamos configurando los servicios/casos de uso para poder acceder a ellos desde cualquier controlador
    #config.autoload_paths += Dir[Rails.root.join('app', 'services', '*')]
    #config.autoload_paths += Dir[Rails.root.join('app', 'use_cases', '*')]
    config.autoload_paths += %W(#{config.root}/services)
    config.autoload_paths += %W(#{config.root}/use_cases)

  end
end
