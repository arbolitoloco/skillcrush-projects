# Fizz Buzz
# 1. Write numbers from 1 to 100
# 2. For multiples of 3, print "Fizz" instead of the number
# 3. For multiples of 5, print "Buzz" instead of the number
# 4. For numbers which are multiples of both 3 and 5, print "FizzBuzz"

number = 0

# 1. Write numbers from 1 to 100
while (number < 100)
	number += 1
	# Check number for multiples
	if (number % 3 === 0 && number % 5 === 0)
		puts "FizzBuzz"
	elsif (number % 3 === 0)
		puts "Fizz"
	elsif (number % 5 === 0)
		puts "Buzz"
	else
		puts number
	end
end