# Weather App Project

# This is your BIG Skillcrush 104 class project!
# You will create a weather app that allows a user to input their location
# (zip code, city, state, etc.), hit submit, and then, depending on 
# real-time data that you will source from a public API, see a message 
# customized to what the weather is like where they live.

require 'barometer'

# STEP 1: USER INPUTS THEIR LOCATION
# The user will tell you where they are by submitting their zipcode, 
# city, landmark or Woe ID!
puts "What is your location? Provide your zipcode, city, landmark or Woe ID."
answer = gets.capitalize
puts answer

# STEP 2: YOU USE A PUBLIC API TO FIND OUT WHAT THE WEATHER IS IN 
# THEIR AREA
# This all happens behind the scenes! And you will be using the 
# Barometer Gem.

barometer = Barometer.new(answer)
weather = barometer.measure
result = weather.current

# Puts all methods and properties in weather
puts result.inspect

# STEP 3: DEPENDING ON THE WEATHER, YOU WILL SERVE THEM ONE OF THE 
# FOLLOWING SCREENS
# If it’s sunny: it’s 85 degrees and sunny!
# If it’s cloudy: 55 degrees and crazy cloudy!
# If it’s rainy: 60 degrees and crazy rainy!
# If it’s snowy: 32 degrees and super snowy!

# Condition (sunny, clear, rainy, etc.)
condition = result.icon

# Temperature
temperature = result.temperature

puts "Currently in #{answer}: #{temperature} and #{condition}!"