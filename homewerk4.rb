def ask_for_name
	questions = ["Would the fountain of your mind were clear again, that I might water an ass at it. Also, what's your first name?", "Thou art the son and heir of a mongrel bitch. Also, what's your last name?"]
	names = []
	questions.each do |question|
		puts question
		names << gets.chomp
	end
	greeting(names[0], names[1])
end

def greeting(first, last)
	puts "Hello, #{first} #{last}, thou hath more hair than wit, and more faults than hairs, and more wealth than faults."
end

ask_for_name




