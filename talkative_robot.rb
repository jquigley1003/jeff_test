require 'pry'

puts "What is your name?"
user_name = gets.chomp
puts "How old are you?"
user_age = gets.chomp.to_i
puts "What is your gender? (M or F)"
user_gender = gets.chomp.upcase!

puts "Hi #{user_name} who is #{user_age} years old!"

puts "Hey, you are male." if user_gender == "M"

puts "Hey, you are female" unless user_gender == "M"  

if user_gender == "M"
	puts "You are probably handsome, too!"
else
	puts "You are probably beautiful, too!"
end

case
when user_age < 75
	puts "You'll be 75 in #{75 - user_age} years"
when user_age == 75
	puts "You're 75!"
else
	puts "You turned 75 #{user_age - 75} years ago."
end

if user_age < 30 && user_gender == "M"
	puts "You are a young boy."
elsif user_age < 30 && user_gender == "F"
	puts "You are a young girl."
elsif user_age > 30 && user_gender == "M"
	puts "You are a mature man."
else
	puts "You are a mature woman."
end

if user_age > 100 && user_gender == "M"
	puts "Are you a great-great grandfather?"
elsif user_age > 100 && user_gender == "F"
	puts "Are you a great-great grandmother?"
end

puts user_age < 100 ? "You will reach 100 in #{100 - user_age} years" : "You are 100+!"

initial = user_name.chars.first
puts "Do you mind if I call you #{initial}?"

future_age = 75 - user_age
if future_age > 0
	puts "You will be 75 years old in #{future_age} years."
else
	puts "You already attained that amazing age of 75!"
end

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
