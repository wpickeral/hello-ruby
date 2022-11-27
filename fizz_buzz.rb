#"Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number
# and for the multiples of five print “Buzz”. For numbers which
# are multiples of both three and five print “FizzBuzz”."

for n in 1..100
  fizz = n % 3 == 0
  buzz = n % 5 == 0
  fizz_buzz = fizz && buzz

  if fizz_buzz
    puts 'FizzBuzz'
  else
    if fizz
      puts 'Fizz'
    elsif buzz
      puts 'Buzz'
    else
      puts n
    end
  end
end

