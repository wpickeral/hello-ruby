puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "German" then "Guten Tag!"
when "Finnish" then puts "Haloo!"
else puts "I don't know that language!"
end

# OR you can use this syntax

case greeting
when "English"
  puts "Hello"
else
  puts "I don't know that language!"
end