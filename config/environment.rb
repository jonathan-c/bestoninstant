# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bestoninstant::Application.initialize!

def send_text(to, body)
  @client = Twilio::REST::Client.new
  User.all.each do |user|
    @client.account.messages.create(
      :from => ENV["from"],
      :to => to,
      :body => body
    )
  end
end
