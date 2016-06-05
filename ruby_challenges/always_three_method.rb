# Refactor your Always 3 script (AGAIN, we know!) to be a method.

def always_three
	# Gets number input from user
	puts "Give me a number"

    # Gets number and convert to integer
	number = gets.to_i

	# Math to result in always 3, then converts to string
	number = (((number + 5) * 2 - 4) / 2 - number).to_s
	
    # Puts result out
	puts "The result is #{number}!"
end

#Calls method 
#always_three

#Refactor always 3 AGAIN so it accepts arguments
def always_three_again(number)
	number = (((number + 5) * 2 - 4) / 2 - number).to_s
	
end

puts = "Give me a number"
number = gets.to_i
puts "The result is" + always_three_again(number) + "!"
