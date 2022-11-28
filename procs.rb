# This is a Proc. Kind of like a Javascript callback
# Procs are blocks that are true objects in Ruby, blocks are not true objects

# When Ruby expects a block, and we pass a Proc we must add the & symbol as shown below

def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)

# We can also call the Proc using the .call method like this

phrase.call

# Much easier than defining a method to call the Proc
=begin
BLOCKS, PROCS, AND LAMBDAS
Quick Review

 - A block is just a bit of code between do..end or {}. It’s not an object on its own, but it can be passed to methods like .each or .select.
 - A proc is a saved block we can use over and over. (Returns immediately)
 - A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.
  There are obviously lots of cases in which blocks, procs, and lambdas can do similar work, but the exact circumstances of your program will help you decide which one you want to use.=end

Source: https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/quick-review