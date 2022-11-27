# .collect will take a block and return a new array with the modified values 
nums = [1, 2, 3, 4, 5]

square = nums.collect { |n| n * n }
p "square: #{square}"
p "nums: #{nums}"

# .collect! will not return a new array, it will modified the array in place
nums.collect! { |n| n * n }
p "nums: #{nums}"
