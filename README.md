# The Ruby Programming Language

`print "Hello World`

`print` does not add a new line

`puts` "put string" does not add a new line. That is the only difference between puts and print.

We can also use the short hand `p` for the puts command
p 'Hello, World!'

Assigning a variable

```
 # Assign the variable
 message = "Hello, World!"

 # print the variable 
 p message
```

### Implicit returns

Ruby will return the result of the last evaluated expression

```ruby

def add(a, b)
  return a + b
end

```

This is the same as:

```ruby

def add(a, b)
  a + b
end
```

### Blocks, procs and lambdas

`Array.collect` will take a block and apply an expression to every element in the collection

```ruby
nums = [1, 2, 3, 4, 5]

square = nums.collect { |n| n * n }
p "square: #{square}"
p "nums : #{nums}"
```

Result

```ruby
"square: [1, 4, 9, 16, 25]"
"nums: [1, 2, 3, 4, 5]"
```

Array.collect!

```ruby
nums = [1, 2, 3, 4, 5]

# .collect! will not return a new array, it will modified the array in place
nums.collect! { |n| n * n }
p "nums : #{nums}"
```

Result

```ruby
"nums: [1, 4, 9, 16, 25]"

