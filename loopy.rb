family = ["William", "John", "Mary", "Jane", "Peter", "Susan"]

# iterate over a list easily
family.each do |name|
  puts name
end

# Hash (Similar to Javascript object or python dictionary)
person = {
  "first_name" => "William",
  "last_name" => "Pickeral",
  "age" => 37,
  "job" => "Developer"
}

# just the value
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |x, y|
  puts y
end

# The same each method can be used for hashes 😳
person.each do |key, value|
  puts "#{key}: #{value}"
end

# Iterating over a multidimensional array
#
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |x|
  x.each do |e|
    puts e
  end
end