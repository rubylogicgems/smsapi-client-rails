# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "smsapi/client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "smsapi-client-rails"
  s.version     = SmsapiClientRails::VERSION
  s.authors     = ["Alek Niemczyk", "Marek Machula", "Marcin Drozd", "Michal Musialik"]
  s.email       = ["info@rubylogic.pl"]

  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  s.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  s.description   = %q{TODO: Write a longer description or delete this line.}
  s.homepage      = "TODO: Put your gem's website or public repo URL here."
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'smsapi-client', '~> 0.1'
  s.add_dependency 'activesupport', '~> 3.0'
  s.add_development_dependency "bundler", "~> 1.8"
  s.add_development_dependency "rake", "~> 10.0"
end
