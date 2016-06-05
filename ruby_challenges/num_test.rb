puts "Enter birthdate (MMDDYYYY)."
birthday = gets
number = birthday[0].to_i+birthday[1].to_i+birthday[2].to_i+birthday[3].to_i+birthday[4].to_i+birthday[5].to_i+birthday[6].to_i+birthday[7].to_i

number.to_s

puts number

puts number.to_s[0]
puts number.to_s[1]

number = number.to_s[0].to_i+number.to_s[1].to_i
puts number	
if (number > 9)
    number = number[0].to_i+number[1].to_i
    puts number
end    

puts number

number.to_s
    
puts "Your numerology number is #{number}."