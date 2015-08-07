api_key = YAML.load_file(Rails.root.join('config', 'smsapi.yml'))

SMSapi.configure do |config|
  #config.primary_url = "https://ssl.smsapi.pl/"
  #config.secondary_url = "https://ssl2.smsapi.pl/"
  #config.test = 1
  #config.flash = 1

  config.username = api_key['username']
  config.password = api_key['password']
end