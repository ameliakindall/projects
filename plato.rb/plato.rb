class PlatonicPerson

  def talk_about_self(name, calling)
    puts "My name is, #{name}, and I am a #{calling}"
  end

  def list
    characters = {
        'a' => 'Yannis Ritsos',
        'b' => 'Sappho of Lesbos',
        'c' => 'Archimedes',
        'd' => 'Telesilla of Argos',
        'e' => 'Thargelia of Miletus',
        'f' => 'Demetrius of Thessaloniki'
    }
    puts 'Choose from one of the following characters: (type a, b, c...etc)'
    characters.each do |k, v|
      puts "#{k}) #{v}"
    end
  end

  def choose_person(characters)
    selection = gets.chomp
    name = characters[selection]
  end

  def ask_and_answer(question)
    puts question
    gets.chomp
  end

  def platonics
    traits = {}

    bravery = ask_and_answer("Rate your character's bravery from 1-10")
    traits[:bravery] = bravery.to_i

    rationality = ask_and_answer("Rate your character's rationality from 1-10")
    traits[:rationality] = rationality.to_i

    eloquence = ask_and_answer("Rate your character's verbal eloquence from 1-10")
    traits[:verbal_eloquence] = eloquence.to_i

    physical_strength = ask_and_answer("Rate your character's physical strength from 1-10")
    traits[:physical_strength] = physical_strength.to_i
    traits
  end

  def main_trait(platonics_hash) # Find the trait with the highest rating
    max_value = platonics_hash.values.max
    trait = platonics_hash.key(max_value)
    trait.to_s
  end

  def calling(trait)
    puts trait.class
    case trait
      when 'bravery'
        'infantry'
      when 'rationality'
        'philosopher'
      when 'eloquence'
        'priest'
      when 'physical_strength'
        'chariot_racer'
      else
        'peasant'
    end
  end

end
pp = PlatonicPerson.new
pp_list = pp.list
name = pp.choose_person(pp_list)
pp_traits = pp.platonics
puts pp_traits
trait = pp.main_trait(pp_traits)
calling = pp.calling(trait)
pp.talk_about_self(name, calling)


