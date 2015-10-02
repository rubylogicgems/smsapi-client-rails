# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smsapi-client-rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "smsapi-client-rails"
  s.version     = SmsapiRails::VERSION
  s.authors     = ["Alek Niemczyk", "Marek Machula", "Marcin Drozd", "Michal Musialik"]
  s.email       = ["info@rubylogic.pl"]

  s.summary       = 'SMSAPI.pl Rails client'
  s.description   = 'SMSAPI.pl Rails client'
  s.homepage      = 'https://github.com/rubylogicgems/smsapi-client-rails'
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'smsapi-client', '~> 0.2'
  s.add_dependency 'activesupport', '> 3.0'
  s.add_development_dependency "bundler", "~> 1.8"
  s.add_development_dependency "rake", "~> 10.0"
end
