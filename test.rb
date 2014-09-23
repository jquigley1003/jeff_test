puts "Test Message"
puts "We're running this in the terminal"

puts "What is your name?"
user_name = gets.chomp

puts "Hey #{user_name}"
puts "how are you doing?"

mood = gets.chomp.downcase

puts "Glad to hear you're #{mood}?"