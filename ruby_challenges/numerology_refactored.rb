# Refactor numerology app to use methods and return values
def find_birth_path_number(birthdate)
	sum_all_nums = (birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + 
		birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i +
		birthdate[7].to_i)

	sum1 = sum_all_nums.to_s
	sum2 = sum1[0].to_i + sum1[1].to_i

	if (sum2 > 9) then
		sum2.to_s
		sum2 = sum2[0].to_i + sum2[1].to_i
	end
	path_number = sum2
	return path_number
end

def get_message(path_number)
	case (path_number)
	when 1
		message = "\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		message = "\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		message = "\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		message = "\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		message = "\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		message = "\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		message = "\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		message = "\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		message = "\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		message = "\nOops! You're birth date didn't return a path number. Check the birth date entered."
	end
end

puts "What is your birth date? Please write in MMDDYYYY format."
birthdate = gets

path_number = find_birth_path_number(birthdate)

message = get_message(path_number)
puts puts "\nThe sum of all your birth date numbers is #{path_number}." + "\n" + message