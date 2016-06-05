# Refactor original code (below) to be only three lines and to use a single variable.
# Hint: you could probably do all the math on a single line.
# puts "Give me a number"
# user_number = gets.to_i
# number_1 = user_number + 5
# number_1 *= 2
# number_1 -= 4
# number_1 /=2
# number_1 -= user_number
# puts "The result is #{number_1}!"

puts "Give me a number"
number = gets.to_i
puts "The result is " + (((number + 5) * 2 - 4) / 2 - number).to_s + "!"


