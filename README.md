# Smsapi::Client

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'smsapi-client-rails', '~> 0.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smsapi-client-rails

## Usage

# Configuration

Generate local configuration files:

    $ rails generate smsapi:install

Edit edit credentials in config/smsapi.yml. You can get your credentials on [SMSAPI.pl](http://smsapi.pl)

```ruby
# Basic usage
client = SmsapiRails::Client.new username, password
sms = client.send_sms 500500500, 'Text Message'
bulk = client.send_bulk [500500500, 600600600, 7007007], 'Text Message', test: '1'

# Quick send a single text message
sms = SmsapiRails.send_sms 500500500, 'Text Message'
sms.status   # 'OK'
sms.success? # => true
sms.points   # => 0.12

# When something goes wrong
sms.status        # 'ERROR'
sms.success?      # => false
sms.error?        # => true
sms.error_code    # => 101
sms.error_message # => 'Bad Credentials'

# Quick send a bulk of messages
bulk = SmsapiRails.send_bulk [500500500, 600600600, 7007007], 'Text Message', test: '1'

# Gives access to an array of sent messages
bulk.sent
bulk.sent.first.success? # => true

# The api returns only statuses for successful messages. Since one of our
# numbers was too short the array contains only 2 items.
bulk.sent.count # => 2
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/rubylogicgems/smsapi-client-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
