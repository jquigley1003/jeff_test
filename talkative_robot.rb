require 'pry'
def ask_for_info
	puts "I'm a talkative robot. Let's get some information from you."
end

def greet_user(name, age)
	puts "Hi #{name} who is #{age} years old!"
end

def gender_message(gender)
	puts gender == "M" ? "Hey, you are a male." : "Hey, you are a female." 
	puts gender == "M" ? "You are probably handsome, too!" : "You are probably beautiful, too!"
end

def age_based_message(age)
	case
	when age < 75
		puts "You'll be 75 in #{75 - age} years"
	when age == 75
		puts "You're 75!"
	else
		puts "You turned 75 #{age - 75} years ago."
	end

	puts age < 100 ? "You will reach 100 in #{100 - age} years" : "You are 100+!"

	future_age = 75 - age
	
	puts future_age > 0 ? "You will be 75 years old in #{future_age} years." : "You already attained that amazing age of 75!"
end

def age_gender_based_message(age, gender)
	if age < 30 && gender == "M"
		puts "You are a young boy."
	elsif age < 30 && gender == "F"
		puts "You are a young girl."
	elsif age >= 30 && gender == "M"
		puts "You are a mature man."
	else
		puts "You are a mature woman."
	end

	if age >= 100 && gender == "M"
		puts "Are you a great-great grandfather?"
	elsif age >= 100 && gender == "F"
		puts "Are you a great-great grandmother?"
	end
end

def first_initial(first_name)
	initial = first_name.chars.first
	puts "Do you mind if I call you #{initial}?"
end

def city_state_message(name,city, state, how_long)
	puts "So #{name} who lives in #{city}, #{state}. You have lived there #{how_long} years."
end

def moving_soon(answer)
	puts answer == "Y" ? "Hope your move goes well." : "Hope you plan to make more friends!"	
end

def finding_author(people)
	people.reject { |human| human[:name] != "Jeff" }[0]
end

#This function will return the author hash
def select_by_name(list_of_users,first_name)
	list_of_users.select { |n| n [:name] == first_name }.first
	puts list_of_users [1]
end

user_response ={}

author = { name: "Jeff", age: 48, gender: "M", city: "Atlanta", state: "GA",
		 years_in_state: 8, moving: "no"}

ask_for_info

puts "What is your name?"
user_name = gets.chomp
user_response.store("name", user_name)

puts "How old are you?"
user_age = gets.chomp.to_i
user_response.store("age", user_age)

puts "What is your gender? (M or F)"
user_gender = gets.chomp.upcase!
user_response.store("gender", user_gender)

greet_user(user_name, user_age)
gender_message(user_gender)
age_based_message(user_age)
age_gender_based_message(user_age, user_gender)
first_initial(user_name)

user_name.upcase!

puts "Hey #{user_name}, where are you going!?"
puts %s(Yo, "Dude", what's up?)

puts "What city do you live in?"
user_city = gets.chomp
user_response.store("city", user_city)

puts "What state do you live in?"
user_state = gets.chomp
user_response.store("state", user_state)

puts "How many years have you lived there?"
user_years_state = gets.chomp.to_i
user_response.store("years_in_state", user_years_state)

puts "Do you plan on moving soon? (Y or N)"
user_moving = gets.chomp.upcase
user_response.store("moving", user_moving)

city_state_message(user_name, user_city, user_state, user_years_state)
moving_soon(user_moving)

grocery_list = ["bananas", "apples", "bread", "eggs", "yogurt"]
random_item = grocery_list.sample
puts "Did you grab the #{random_item}? (Y/N)"
grabbed_item = gets.chomp.downcase
user_response.store("user_grabbed_#{random_item}", grabbed_item)

if grabbed_item == "y"
	grocery_list.delete(random_item)
end

new_item = "tomato sauce"
puts "Oh yeah, don't forget the #{new_item}."
grocery_list.push(new_item)

puts "Current Grocery List:"
grocery_list.map { |item| puts "Item #{grocery_list.index(item)+1} -- #{item}" }

groceries = File.open("grocery_list.txt", "w")
make_list = grocery_list.join(", ")
groceries.puts make_list
groceries.close

new_grocery_list = IO.read("grocery_list.txt").chomp.split(", ")
puts "What would you like to add to the grocery list?"
another_item = gets.chomp
new_grocery_list.unshift(another_item)
IO.write("new_grocery_list.txt",new_grocery_list.join(", "))

puts "Updated Grocery List:"
new_grocery_list.map { |item| puts "Item #{new_grocery_list.index(item)+1} -- #{item}" }

people = [user_response, author]
puts "By the way, the author of this program is: #{finding_author(people)[:name]}"

puts "Type a first name to guess the author!"
author_first_name = gets.chomp.capitalize!
select_by_name(people, author_first_name)

puts "Let's create a CSV file with your grocery list."

require "csv"
CSV.open("groceries.csv", "w") do |csv|
	csv << ["Item Number", "Item Name"]
	new_grocery_list.each_index do |item|
		csv << ["#{item+1}", new_grocery_list[item]]
	end
end


