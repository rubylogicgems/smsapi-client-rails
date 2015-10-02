module SmsapiRails

  class Client
    def initialize(username = SMS_API['username'], password = SMS_API['password'])
      @client = Smsapi::Client.new(username, password)
    end

    def send_sms(to, message, options = {})
      result = @client.send_single(to, message, options)
      result
    end

    def schedule_single(to, message, date, options = {})
      result = @client.schedule_single(to, message, date, options)
      result
    end

    def send_bulk(to, message, options = {})
      result = @client.send_bulk(to, message, options)
      result
    end
  end

  def self.send_sms(to, message, options = {})
    result = SmsapiRails::Client.new.send_sms(to, message, options)
    result
  end

  def self.send_bulk(to, message, options = {})
    result = SmsapiRails::Client.new.send_bulk(to, message, options)
    result
  end
end
