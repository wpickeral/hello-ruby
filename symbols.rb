# What is a symbol?
# You can think of a Ruby symbol as sort of a name. It's important to remember that symbols are not strings

# This is false
# "string" == :string

# This is only one copy of any particular symbol at a given time

puts "string".object_id #18146760
puts "string".object_id #18146460

puts :symbol.object_id #802268
puts :symbol.object_id #802268

# The two strings are actually different objects, whereas the :symbol is the same object listed twice
# Looks like symbols may be similar to javascript objects in they are references to a value in memory?
#
# What are Symbols Used For?
# Symbols pop up in a lot of places in Ruby, but they’re primarily used either as hash keys or for referencing method names. (We’ll see how symbols can reference methods in a later lesson.)
#
# sounds = {
#   :cat => "meow",
#   :dog => "woof",
#   :computer => 10010110,
# }
# Symbols make good hash keys for a few reasons:
#
#                                         They’re immutable, meaning they can’t be changed once they’re created;
# Only one copy of any symbol exists at a given time, so they save memory;
# Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

# The has rocket syntax changed in Ruby 1.9
# The new syntax looks vary similar to Javascript objects and python dictionaries
new_hash = {
  one: 1,
  two: 2,
  three: 3,
}
new_hash

# Roby provides two handy methods to print the key or value. We can use these when we need the key or the value and not both
new_hash.each_key { |k| puts k }
new_hash.each_value { |v| puts v }