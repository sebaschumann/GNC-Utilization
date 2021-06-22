require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gnc
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1



    # INTTERNATIONALIZATION CONFIGS
  # Set Default Locale
  config.i18n.default_locale = :en
  # Set Available Locales
  # config.i18n.available_locales = [:es, :en, :de]
  # Set Fallbacks
  config.i18n.fallbacks = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
