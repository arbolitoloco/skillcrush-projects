def my_first_method
	puts "This is my first Ruby method!"
end

my_first_method

def sum_method
	sum = 2 + 2
	puts sum
end

sum_method

def sum_method_refactored(number1, number2)
	sum = number1 + number2
	puts sum
end

sum_method_refactored(2, 2)
sum_method_refactored(171, 1000)
sum_method_refactored(29, 375)