require 'twilio-ruby'

class Communicator
  @@tele_client = Twilio::REST::Client.new(
      'AC0553c92670b86bbb786dcbffd607cef9',
      'd7e65bbc80bcf28b1e21ad2377d5f02d')

  def self.send_message(from, to, message_text)
    begin
      client.account.sms.messages.create(
        from:     from,
        to:       to,
        body:     message_text
      )
    rescue
      return false
    end
    true
  end

  private

  def self.client
    @@tele_client
  end

end
