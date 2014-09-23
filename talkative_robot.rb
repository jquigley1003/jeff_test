require 'pry'

puts "What is your name?"
user_name = gets.chomp
puts "How old are you?"
user_age = gets.chomp

puts "Hi #{user_name} who is #{user_age} years old!"

initial = user_name.chars.first
puts "Do you mind if I call you #{initial}?"
future_age = 75 - user_age.to_i
puts "You will be 75 years old in #{future_age} years."

user_name.upcase!

puts "Hey #{user_name}, where are you going!?"
puts %s(Yo, "Dude", what's up?)

puts "What city do you live in?"
user_city = gets.chomp

puts "What state do you live in?"
user_state = gets.chomp

puts "How many years have you lived there?"
user_years_state = gets.chomp.to_i

puts "Do you plan on moving soon? (yes or no)"
user_moving = gets.chomp.downcase

puts "So #{user_name} who lives in #{user_city}, #{user_state}. You have lived there #{user_years_state} years."

if user_moving == "yes"
	puts "Hope your move goes well"
elsif user_moving == "no"
	puts "Glad you plan to stay to make more friends!"
else
	puts "You didn't answer with 'yes' or 'no'!"
end

puts "This is for you, Instructor!"