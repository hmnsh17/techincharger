require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Techinchargers
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))
    Rails.application.config.assets.precompile += %w( dataTables.bootstrap.min.css )
    Rails.application.config.assets.precompile += %w( jquery.dataTables.min.js )
    Rails.application.config.assets.precompile += %w( dataTables.bootstrap.min.js )
    Rails.application.config.assets.precompile += %w( application.scss )

    Rails.application.config.assets.precompile += %w( nice-select.min.css )
    Rails.application.config.assets.precompile += %w( bootstrap-datetimepicker.js )

    Rails.application.config.assets.precompile += %w( bootstrap.css )
    Rails.application.config.assets.precompile += %w( font-awesome.min.css )
    Rails.application.config.assets.precompile += %w( owl-carousel.css )
    Rails.application.config.assets.precompile += %w( responsive.css )
    Rails.application.config.assets.precompile += %w( style.css )
    Rails.application.config.assets.precompile += %w( fontawesome-webfont.ttf )
    Rails.application.config.assets.precompile += %w( fontawesome-webfont.woff )
    Rails.application.config.assets.precompile += %w( fontawesome-webfont.woff2 )
    Rails.application.config.assets.precompile += %w( jquery.js )
    Rails.application.config.assets.precompile += %w( owl.carousel.min.css )
    Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
    Rails.application.config.assets.precompile += %w( jquery.parallax-1.1.3.js )
    Rails.application.config.assets.precompile += %w( jquery.simple-text-rotator.js )
    Rails.application.config.assets.precompile += %w( owlcarousel2-filter.min.js )
    Rails.application.config.assets.precompile += %w( jquery-3.4.1.mindfdsa.js )
    Rails.application.config.assets.precompile += %w( custom.js )
    Rails.application.config.assets.precompile += %w( jquery.isotope.min.js )
    Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
    Rails.application.config.assets.precompile += %w( jquery.themepunch.plugins.min.js )
    Rails.application.config.assets.precompile += %w( jquery.themepunch.revolution.min.js )
    Rails.application.config.assets.precompile += %w( jquery.nice-select.min.js )
    Rails.application.config.assets.precompile += %w( jquery.royalslider.min.js )
    Rails.application.config.assets.precompile += %w( bootstrap.js )
    # config.assets.enabled = true
    # config.assets.version = '1.0'

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
