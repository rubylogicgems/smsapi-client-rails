module SmsapiRails

  class Client
    attr_reader :client

    def initialize(username = SMS_API['username'], password = SMS_API['password'])
      @client = Smsapi::Client.new(username, password)
    end

    def send_sms(to, message, options = {})
      client.send_single(to, message, options)
    end

    def schedule_sms(to, message, date, options = {})
      client.schedule_single(to, message, date, options)
    end

    def send_bulk(to, message, options = {})
      client.send_bulk(to, message, options)
    end
  end

  def self.send_sms(to, message, options = {})
    SmsapiRails.client.send_single(to, message, options)
  end

  def self.send_bulk(to, message, options = {})
    SmsapiRails.client.send_bulk(to, message, options)
  end
end
