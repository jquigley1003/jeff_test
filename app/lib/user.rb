require 'person'

class User < Person

  # def initialize(args)
  #   super(args)
  # end

  def greet_user
    puts "Hi #{@name} who is #{@age} years old!"
  end

  def age_based_message_75
    case
    when age < 75
      "You'll be 75 in #{75 - age} years"
    when age == 75
      "You're 75!"
    else
      "You turned 75 #{age - 75} years ago."
    end
  end

  def age_based_message_random
    puts age < 100 ? "You will reach 100 in #{100 - age} years" : "You are 100+!"

    future_age = 75 - age
    
    puts future_age > 0 ? "You will be 75 years old in #{future_age} years." : "You already attained that amazing age of 75!"
  end

  def gender_based_message
    puts @gender == "M" ? "Hey, you are a male." : "Hey, you are a female." 
    puts @gender == "M" ? "You are probably handsome, too!" : "You are probably beautiful, too!"
  end

  def age_gender_based_message
    if age < 30 && @gender == "M"
      puts "You are a young boy."
    elsif age < 30 && @gender == "F"
      puts "You are a young girl."
    elsif age >= 30 && @gender == "M"
      puts "You are a mature man."
    else
      puts "You are a mature woman."
    end

    if age >= 100 && @gender == "M"
      puts "Are you a great-great grandfather?"
    elsif age >= 100 && @gender == "F"
      puts "Are you a great-great grandmother?"
    end
  end

  def first_initial
    puts "Do you mind if I call you #{@name.chars.first}?"
  end

  def city_state_message
    puts "So #{@name} who lives in #{@city}, #{@state}.\nYou have lived there #{@years_in_state} years."
  end

  def moving_soon
    puts @moving == "Y" ? "Hope your move goes well." : "Hope you plan to make more friends!" 
  end

end