require 'rspec'
require 'sendcloud'

RSpec.configure do |_|
  Sendcloud.setup do |config|
    config.api_user = 'api_user@example.com'
    config.api_key = 'api key'
  end
end