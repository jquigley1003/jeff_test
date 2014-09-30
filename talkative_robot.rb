require 'pry'
require "csv"

class User
	def initialize(args)
		@name = args[:name]
		@age = args[:age]
		@gender = args[:gender]
		@city = args[:city]
		@state = args[:state]
		@years_in_state = args[:years_in_state]
		@moving = args[:moving]
	end


	def self.get_info_from_prompts
		puts "I'm a talkative robot. Let's get some information from you."

		user = {}
		puts "What is your name?"
		user[:name] = gets.chomp.capitalize

		puts "How old are you?"
		user[:age] = gets.chomp.to_i

		puts "What is your gender? (M or F)"
		user[:gender] = gets.chomp.upcase

		puts "What city do you live in?"
		user[:city] = gets.chomp

		puts "What state do you live in?"
		user[:state] = gets.chomp

		puts "How many years have you lived there?"
		user[:years_in_state] = gets.chomp.to_i

		puts "Do you plan on moving soon? (Y or N)"
		user[:moving] = gets.chomp.upcase

		user
	end

	def name
		@name
	end

	def age
		@age
	end

	def gender
		@gender
	end

 	def city
 		@city
 	end

 	def state
 		@state
 	end

 	def years_in_state
 		@years_in_state
 	end

 	def moving
 		@moving
 	end

	def greet_user
		puts "Hi #{@name} who is #{@age} years old!"
	end

	def age_based_message
		case
		when @age < 75
			puts "You'll be 75 in #{75 - @age} years"
		when @age == 75
			puts "You're 75!"
		else
			puts "You turned 75 #{@age - 75} years ago."
		end

		puts @age < 100 ? "You will reach 100 in #{100 - @age} years" : "You are 100+!"

		future_age = 75 - @age
		
		puts future_age > 0 ? "You will be 75 years old in #{future_age} years." : "You already attained that amazing age of 75!"
	end

	def gender_based_message
		puts @gender == "M" ? "Hey, you are a male." : "Hey, you are a female." 
		puts @gender == "M" ? "You are probably handsome, too!" : "You are probably beautiful, too!"
	end

	def age_gender_based_message
		if @age < 30 && @gender == "M"
			puts "You are a young boy."
		elsif @age < 30 && @gender == "F"
			puts "You are a young girl."
		elsif @age >= 30 && @gender == "M"
			puts "You are a mature man."
		else
			puts "You are a mature woman."
		end

		if @age >= 100 && @gender == "M"
			puts "Are you a great-great grandfather?"
		elsif @age >= 100 && @gender == "F"
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

class GroceryList

	def initialize(items)
		@items = items
		
	end

	def to_s
		@items.join(",")
	end

	def items
		@items
	end

	def random_item
		@random_item
	end

	def grabbed_item
		@grabbed_item
	end

	def self.get_grocery_list
		@items = IO.read("grocery_list.txt").chomp.split(", ")
		puts "Current Grocery List:"
		@items.map { |item| puts "#{item}" }
	end

	def select_random_item(groceries)
		@random_item = groceries.sample
		puts "Did you grab the #{@random_item}? (Y/N)"
		@grabbed_item = gets.chomp.downcase
		if @grabbed_item == "y"
			groceries.delete(@random_item)
		end
	end
end

	# def finding_author(people)
	# 	people.reject { |human| human[:name] != "Jeff" }[0]
	# end

	# #This function will return the author hash
	# def select_by_name(list_of_users,first_name)
	# 	list_of_users.select { |n| n [:name] == first_name }.first
	# 	puts list_of_users [1]
	# end

	# def write_to_csv(grocery_list, any_csv_file)
	# 	CSV.open(any_csv_file, "w") do |csv|
	# 		csv << ["Item Number", "Item Name"]
	# 		grocery_list.each_index do |item|
	# 			csv << ["#{item+1}", grocery_list[item]]
	# 		end
	# 	end
	# end
#end

# def read_from_csv(any_csv_file)
# 	col_data = []
# 	CSV.foreach(any_csv_file) { |row| col_data << row[1] }
#	col_data
# end

# def print_csv(col_data)
	# puts "This is the current grocery list"
	# col_data.shift #removes the header
	# puts col_data
# end

# author = { name: "Jeff", age: 48, gender: "M", city: "Atlanta", state: "GA",
#		 years_in_state: 8, moving: "no"}

user_info = User.get_info_from_prompts
@user = User.new(user_info)
@user.greet_user
@user.age_based_message
@user.gender_based_message
@user.age_gender_based_message
@user.first_initial
@user.city_state_message
@user.moving_soon

groceries = GroceryList.get_grocery_list
@groceries = GroceryList.new(groceries)
@groceries.select_random_item(@groceries)

# grocery_list = ["bananas", "apples", "bread", "eggs", "yogurt"]
# random_item = grocery_list.sample
# puts "Did you grab the #{random_item}? (Y/N)"
# grabbed_item = gets.chomp.downcase
# user_response.store("user_grabbed_#{random_item}", grabbed_item)

# if grabbed_item == "y"
# 	grocery_list.delete(random_item)
# end

# new_item = "tomato sauce"
# puts "Oh yeah, don't forget the #{new_item}."
# grocery_list.push(new_item)

# puts "Current Grocery List:"
# grocery_list.map { |item| puts "Item #{grocery_list.index(item)+1} -- #{item}" }

# groceries = File.open("grocery_list.txt", "w")
# make_list = grocery_list.join(", ")
# groceries.puts make_list
# groceries.close

# new_grocery_list = IO.read("grocery_list.txt").chomp.split(", ")
# puts "What would you like to add to the grocery list?"
# another_item = gets.chomp
# new_grocery_list.unshift(another_item)
# IO.write("new_grocery_list.txt",new_grocery_list.join(", "))

# puts "Updated Grocery List:"
# new_grocery_list.map { |item| puts "Item #{new_grocery_list.index(item)+1} -- #{item}" }

# people = [user_response, author]
# puts "By the way, the author of this program is: #{finding_author(people)[:name]}"

# puts "Type a first name to guess the author!"
# author_first_name = gets.chomp.capitalize!
# select_by_name(people, author_first_name)

# puts "Let's create a CSV file with your grocery list."
# write_to_csv(new_grocery_list, "groceries.csv")

