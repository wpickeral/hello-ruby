# .collect will take a block and return a new array with the modified values 
nums = [1, 2, 3, 4, 5]

square = nums.collect { |n| n * n }
p "square: #{square}"
p "nums: #{nums}"

# .collect! will not return a new array, it will modified the array in place
nums.collect! { |n| n * n }
p "nums: #{nums}"

person = {
  first_name: "William",
  last_name: "Pickeral",
  city: "Columbus",
  state: "Ohio"
}

person.each { |key, value| p "#{key}: #{value}" }
person.each_key { |key| p key }
person.each_value { |value| p value }

numbers = 1...10
for number in numbers
  p number
end
