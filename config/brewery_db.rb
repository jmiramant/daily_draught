$brewery_db = BreweryDB::Client.new do |config|
  config.api_key = ENV['BREWERY_DB'] or raise "Please create config/env_vars file"
end
