class Person
  def initialize(args)
    @author         = args[:author]
    @name           = args[:name]
    @age            = args[:age]
    @gender         = args[:gender]
    @city           = args[:city]
    @state          = args[:state]
    @years_in_state = args[:years_in_state]
    @moving         = args[:moving]
  end


  def self.get_info_from_prompts
    puts "Let's get some information!"

    person = {}
    puts "What is your name?"
    person[:name] = gets.chomp.capitalize

    puts "How old are you?"
    person[:age] = gets.chomp.to_i

    puts "What is your gender? (M or F)"
    person[:gender] = gets.chomp.upcase

    puts "What city do you live in?"
    person[:city] = gets.chomp

    puts "What state do you live in?"
    person[:state] = gets.chomp

    puts "How many years have you lived there?"
    person[:years_in_state] = gets.chomp.to_i

    puts "Do you plan on moving soon? (Y or N)"
    person[:moving] = gets.chomp.upcase

    person
  end

  def age
    @age
  end

  def gender
    @gender
  end

end