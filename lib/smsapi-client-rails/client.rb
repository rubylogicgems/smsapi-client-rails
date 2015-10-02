module SmsapiRails

  class Client
    def initialize
      @username = SMSAPI["username"]
      @password = SMSAPI["password"]
      @client = Smsapi::Client.new(@username, @password)
    end

    def send_single(to, message)
      @client.send_single(to, message)
    end

    def schedule_single(to, message, date)
      @client.schedule_single(to, message, date)
    end

    def send_bulk(to, message)
      @client.send_bulk(to, message)
    end
  end
end
