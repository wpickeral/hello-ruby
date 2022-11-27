movies = {
  scarface: 5,
}
puts "Welcome to night at the movies"
puts "How would you like to update your movies library?"
puts "options: add, update, display or delete"
choice = gets.chomp

case choice
when "add"
  print "What is the movie title?:"
  title = gets.chomp.to_sym

  if movies[title] == nil
    print "What is the rating?:"
    rating = gets.chomp.to_i
    movies[title] = rating
    puts "#{title} with rating of #{rating} was successfully added to movies."
  else
    puts "#{title} is already in your movie library."
  end

when "update"
  print "What is the movie title?:"
  title = gets.chomp.to_sym

  if movies[title] != nil
    print "What is the rating?:"
    rating = gets.chomp.to_i
    movies[title] = rating
    puts "#{title} with rating of #{rating} was successfully updated"
  else
    puts "#{title} is not in your movie library."
  end

when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when "delete"
  print "What is the title of the movie you want to delete?:"
  title = gets.chomp.to_sym

  if movies[title] != nil
    movies.delete(title)
    puts "#{title} was successfully deleted."
  else
    puts "#{title} not found"
  end

else
  puts "Error!"
end
