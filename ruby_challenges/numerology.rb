puts "What is your birth date? Please write in MMDDYYYY format."
birthdate = gets

month1 = birthdate[0].to_i
month2 = birthdate[1].to_i
day1 = birthdate[2].to_i
day2 = birthdate[3].to_i
year1 = birthdate[4].to_i
year2 = birthdate[5].to_i
year3 = birthdate[6].to_i
year4 = birthdate[7].to_i

sum_all_nums = month1 + month2 + day1 + day2 + year1 + year2 + year3 + year4

puts "\nThe sum of all your birth date numbers is #{sum_all_nums}."

sum1 = sum_all_nums.to_s

sum2 = sum1[0].to_i + sum1[1].to_i

if (sum2) > 9 then
	sum2.to_s
	sum2 = sum2[0].to_i + sum2[1].to_i
end

puts "\nYour numerology number is #{sum2}."

case(sum2)
	when 1
		puts "\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		puts "\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		puts "\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		puts "\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		puts "\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		puts "\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		puts "\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		puts "\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		puts "\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
