print "Text please:"
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)

# If the new hase does not have a key, the initial value will be set
# to whatever the first key is
# Assigns the word to the key of the hash, and the count of words
# to the value
words.each { |word| frequencies[word] += 1 }

# Sort the hash based on frequency
words = frequencies.sort_by { |word, count| count }

# iterate the object and print the sorted keys and values
words.each do |word, count|
  puts "#{word} #{count.to_s}"
end

