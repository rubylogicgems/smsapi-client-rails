api_key = YAML.load_file(Rails.root.join('config', 'smsapi.yml'))

SMSapi.configure do |config|
  config.username = api_key['username']
  config.password = api_key['password']
  config.test = api_key['test']
  config.flash = api_key['flash']
end
