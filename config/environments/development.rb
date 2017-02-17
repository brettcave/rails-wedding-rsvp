RailsWeddingRsvp::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  config.eager_load = false

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # ActionMailer Config
  config.action_mailer.default_url_options = { :host => "#{ENV['APP_DOMAIN']}.localhost" }

  config.action_mailer.asset_host = "http://#{ENV['APP_DOMAIN']}.localhost"
  config.action_mailer.delivery_method = :sendmail

  # send all emails to me in dev mode - not working
  # config.action_mailer.delivery_method = :single_recipient_sendmail
  # ActionMailer::Base.send :include, SingleRecipientSendmail
  # ActionMailer::Base.single_recipient_sendmail_settings = {
  #   :to => 'mwalsh@me.com'
  # }

  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :address => "smtp.novuscom.net"
  # }
  config.action_mailer.smtp_settings = {
    :user_name => ENV['SMTP_USERNAME'],
    :password => ENV['SMTP_PASSWORD'],
    :domain => ENV['SMTP_DOMAIN'],
    :address => ENV['SMTP_ADDRESS'],
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }

  # change to true to allow email to be sent during development
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"


  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin


  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end
