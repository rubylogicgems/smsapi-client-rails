# This generator drops the smsapi_config.rb and smsapi_config.yml file
# into the appropriate places in a rails app to configure and initialize the
# api credentials.
module SMSapi
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc <<DESC
Description:
    Copies Smsapi configuration files to your application's config directory.
DESC
      def copy_config_file
        template 'smsapi.rb', 'config/initializers/smsapi.rb'
        template 'smsapi.yml', 'config/smsapi.yml'
      end
    end
  end
end