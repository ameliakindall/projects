def ask_number
  puts 'Give me a number, any number'
  gets.chomp
end

def turn_into_integer(number_string)
  number_1 = number_string.to_i
end

def do_math_things(number)
  number_2 = number + 5
  number_2 *= 2
  number_2 -= 4
  number_2 /= 2
  final_number = number_2 - number
  puts "Congrats, you ended up with #{final_number} again!"
end

number_string = ask_number
number = turn_into_integer(number_string)
do_math_things(number)

