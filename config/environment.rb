# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "redis"
  config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  config.time_zone = 'UTC'
end

REDIS_CONFIG = YAML.load(File.read(File.dirname(__FILE__) + "/redis.yml")).symbolize_keys
$redis = Redis.new(REDIS_CONFIG)