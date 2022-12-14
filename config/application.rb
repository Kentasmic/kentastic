require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Kentastic
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Eastern Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
		
		config.action_view.sanitized_allowed_tags = ['a','b','i','u','mark','aside','p','br','code','kbd','pre','img','figure','figcaption','ul','ol','li','div','strong','em','del','blockquote','h1','h2','h3']
		config.action_view.sanitized_allowed_attributes = ['href','title','src','alt','target']
  end
end
