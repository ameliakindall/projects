def questions_and_answers
  questions = {
      name: "What is your name?",
      hair: "What color is your hair?",
      movie: "What is your favorite movie (right now)?"
  }
  answers = {}
  questions.each do |key, value| 
    puts value
   answers[key] = gets.chomp
  end
  
  sentence(answers[:name], answers[:hair], answers[:movie])

end

def sentence(name, hair, movie)
  puts "#{name} has #{hair} hair and her favorite movie is #{movie}"
end

questions_and_answers
