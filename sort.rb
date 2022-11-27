my_array = [3, 2, 55, 2, 55, 54, 4, 23, 23, 5522]

# This does not work
my_array.sort
puts my_array

# This does work? What is the significance of !.
# When should i not use it
my_array.sort!
puts my_array

# A block that is passed into the sort method must
# return either1, 0, or -1. It should return -1 if the
# first block parameter should come before the second,
# 1 if vice versa, and 0 if they are of equal weight,
# meaning one does not come before the other (i.e. if
# two values are equal)

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
puts books

fruits = ["orange", "apple", "banana", "pears", "grapes"]
fruits.sort! { |orange, apple| apple <=> orange }

# The parameter names can be anything. This works too
fruits.sort! { |x, y| y <=> x}
puts fruits

# .sort returns a new sorted array
# .sort! modifies the original array