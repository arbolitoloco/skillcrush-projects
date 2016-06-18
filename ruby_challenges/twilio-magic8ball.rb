# Twilio Challenge - Magic Eight Ball
require 'twilio-ruby'

account_sid = "sid"
auth_token = "token"

# Connect to Twilio API
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Accept a question
puts "What is your question? The Magic 8 Ball will text you your answer."
question = gets

answer_arr = [
	"It is certain", 
	"It is decidedly so", 
	"Without a doubt", 
	"Yes, definitely", 
	"You may rely on it", 
	"As I see it, yes", 
	"Most likely", 
	"Outlook good", 
	"Yes", 
	"Signs point to yes", 
	"Reply hazy try again", 
	"Ask again later", 
	"Better not tell you now", 
	"Cannot predict now", 
	"Concentrate and ask again", 
	"Don't count on it", 
	"My reply is no", 
	"My sources say no", 
	"Outlook not so good", 
	"Very doubtful"
]

# Random number assigned get answer in array
prng = Random.new
text_answer = answer_arr[prng.rand(answer_arr.length)]

# Create and send text message
message = @client.account.messages.create(
	:from => "+twilio number",
	:to => "+my number",
	:body => "You asked '#{question} Magic 8 Ball says #{text_answer}."
	)
puts message.to