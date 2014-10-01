require 'pry'
require 'csv'
require './person'
require './user'
require './author'
require './grocery_list'

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

user_info = Person.get_info_from_prompts
@user = Person.new(user_info)
@user.greet_user
puts @user.age_based_message_75
@user.gender_based_message
@user.age_gender_based_message
@user.first_initial
@user.city_state_message
@user.moving_soon

@author.get_author_info


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

# puts "Let's create a CSV file with your grocery list."
# write_to_csv(new_grocery_list, "groceries.csv")

