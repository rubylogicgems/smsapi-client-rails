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
    config_accessor :primary_url
    config_accessor :secondary_url
    config_accessor :username
    config_accessor :password
    config_accessor :test
    config_accessor :flash
    config_accessor :schedule
    config_accessor :count
  end

  #Default settings
  configure do |config|
    config.primary_url = "https://ssl.smsapi.pl/"
    config.secondary_url = "https://ssl2.smsapi.pl/"
    config.test = 1
    config.flash = 1
  end
end