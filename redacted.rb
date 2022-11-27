puts "Enter a short sentence."
text = gets.chomp
puts "Enter the word to redact"
redacted = gets.chomp

words = text.split(" ")

words.each do |word|
  if word.downcase == redacted.downcase
    print "REDACTED "
  else
    print "#{word} "
  end
end
