def questions_and_answers
  questions = {
      qname: "What is your name?",
      qhair: "What color is your hair?",
      qmovie: "What is your favorite movie (right now)?"
  }
  answers = {}
  puts questions[:qname]
  answer_1 = gets.chomp # initially I did answers[:aname] = gets.chomp but I couldn't get it to run.
  answers[:aname] = answer_1 # So that's why I stored the user input into a variable

  puts questions[:qhair]
  answer_2 = gets.chomp
  answers[:ahair] = answer_2

  puts questions[:qmovie]
  answer_3 = gets.chomp
  answers[:amovie] = answer_3

  sentence(answers[:aname], answers[:ahair], answers[:amovie])

  end


def sentence(name, hair_color, movie)
  puts "#{name} has #{hair_color} hair and her favorite movie is #{movie}"
end

questions_and_answers
