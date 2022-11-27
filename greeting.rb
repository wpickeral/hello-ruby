# My first Ruby program
print "What's your first name?"

first_name = gets.chomp.capitalize
puts "Welcome to my program, #{first_name}"
print "What is your last name?"
last_name = gets.chomp.capitalize
puts "Thank you, #{first_name} #{last_name}"
print "What city do you live in?"
city = gets.chomp.capitalize
puts "#{city} seems like a cool city."
print "What state (Ie. NY) do you live in?"
state = gets.chomp.upcase
puts "So you live in, #{city}, #{state}. Nice!"