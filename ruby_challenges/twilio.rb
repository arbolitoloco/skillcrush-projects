# Twilio Challenge
# Text yourself silly messages
require 'twilio-ruby'

account_sid = ""
auth_token = ""

# Connect to Twilio API
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Create and send text message
message = @client.account.messages.create(
	:from => "+twilio number",
	:to => "+phone number",
	:body => ""
	)
puts message.to