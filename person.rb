class Person

	# constructor
	def initialize(name, age, groceries)
		@name = name
		@age = age
		@groceries = groceries
	end

	# getter (aka accessor method)
	def name
		@name
	end

	def age
		@age
	end

	# setter (aka mutator method)
	def age=(age)
		@age = age
	end

	def greet
		puts "Hello, #{@name} who is #{@age} years old\n#{groceries}"
	end



	def groceries
		@groceries
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
end

grocery_list = GroceryList.new(["eggs", "bacon"])

mike = Person.new("Mike", 34, grocery_list)
mike.greet
