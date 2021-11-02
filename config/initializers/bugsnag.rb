require 'bugsnag/api'

# Provide authentication credentials
Bugsnag::Api.configure do |config|
  config.auth_token = ENV['BUGSNAG_AUTH_TOKEN']
end
