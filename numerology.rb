def birthday
  puts 'What is your birthday? In mmddyyyy format with no spaces or characters in between.'
  gets.chomp
end

def date_massage(number_string)
  number_string.to_i
  number_array = number_string.split('').map { |digit| digit.to_i }
  sum = 0
  number_array.each do |number|
    sum += number
  end
sum
end

def finalize_number(number)
  if number > 9
    num_string = number.to_s
    num_array = num_string.split('')
    final_number = num_array[0].to_i + num_array[1].to_i
  else
    number
  end
end


  def announce_number(number)
    case number
      when 1
        puts "Your number is #{number}. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
      when 2
        puts "Your number is #{number}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
      when 3
        puts "Your number is #{number}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
      when 4
        puts "Your number is #{number}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
      when 5
        puts
        "Your number is #{number}. This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
      when 6
        puts "Your number is #{number}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
      when 7
        puts "Your number is #{number}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
      when 8
        puts "Your number is #{number}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
      when 9
        puts "Your number is #{number}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    end
  end

  num_string = birthday
  number = date_massage(num_string)
  final_number = finalize_number(number)
  announce_number(final_number)















