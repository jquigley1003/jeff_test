class Dog

	# constructor
	def initialize(name, age)
		@name = name
		@age = age
	end

	# getter (aka accessor method)
	def name
		@name
	end

	def age
		@age
	end

	# setter (aka mutator method)
	def  age=(age)
		@age = age
	end

end

my_dog = Dog.new("Miko", 1)
puts "My dog's name is #{my_dog.name} who is #{my_dog.age} years old."
my_dog.age = 2
puts "My dog's name is #{my_dog.name} who is #{my_dog.age} years old."
