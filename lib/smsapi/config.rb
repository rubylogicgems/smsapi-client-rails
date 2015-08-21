require 'active_support/configurable'

module SMSapi
  # Configures global settings for Smsapi
  def self.configure(&block)
    yield @config ||= Smsapi::Configuration.new
  end

  # Global settings for Smsapi
  def self.config
    @config
  end

  class Configuration
    include ActiveSupport::Configurable
    config_accessor :username
    config_accessor :password
    config_accessor :test
    config_accessor :flash
  end

  #Default settings
  configure do |config|
    config.test = 1
    config.flash = 1
  end
end