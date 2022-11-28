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

### Methods

```ruby

def add(a, b)
  return a + b
end 
```

Looks very similar to a python function:

```python
def add(a, b):
  return a + b
```

### Arrays

```ruby
nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

### Hash

```ruby

person = {
  :first_name => "William",
  :last_name => "Pickeral",
  :city => "Columbus",
  :state => "Ohio"
}

```

or we can contract a hash using syntax similar to the Javascript object

```ruby
person = {
  first_name: "William",
  last_name: "Pickeral",
  city: "Columbus",
  state: "Ohio"
}
```

The syntax above is more modern. In either case, the hash properties represented here are known as symbols

We can access value in a hash like this:

```ruby
p person[:first_name]
```

Result

```ruby
"William"
```

We can also iterate the hash using the `.each` method

```ruby
person.each { |key, value| p "#{key}: #{value}" }
```

What if we only needed the key or value? Ruby has helpful methods to help with this.

```ruby
# Assigns an array of keys to person_keys
person_keys = person.each_key { |key| p key }

# Assigns an array of values to person_values
person_values = person.each_value { |value| p value }
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

`Array.collect!`

```ruby
nums = [1, 2, 3, 4, 5]

# .collect! will not return a new array, it will modified the array in place
nums.collect! { |n| n * n }
p "nums : #{nums}"
```

Result

```ruby
"nums: [1, 4, 9, 16, 25]"
```

### Blocks, Procs and Lambdas

#### Block

```ruby
3.times do
  puts "This is a block"
end

# This is also a block 

3.times { puts "This is block" }
```

Result

```ruby
"This is a block"
"This is a block"
"This is a block"
```

#### Proc

Procs are similar to blocks. The major difference is that Procs are true ruby
objects, so we can do things like save them to variables.

Let's say we want to double each value in this array.

```ruby
array_one = [1, 3, 5, 7, 9, 11]
array_two = [2, 4, 6, 8, 10, 12]
array_three = [3, 9, 12, 15, 18, 21]
```

We can accomplish this using blocks

```ruby
array_one_doubled = array_one.map { |n| n * 2 }
array_two_doubled = array_two.map { |n| n * 2 }
array_three_doubled = array_three.map { |n| n * 2 } 
```

Or we can create a new Proc to follow DRY

```ruby
double = Proc.new { |n| n * 2 }
array_one_doubled = array_one.map(&double) # Since map expects a block we use "&" to convert the Proc to a block
array_two_doubled = array_two.map(&double)
array_three_doubled = array_three.map(&double)
```

#### Lambda

Lambda is very similar to Proc. One major difference is that a Proc will return after it is called and no other code
within the calling method will be processed.
Whereas, a lambda will return to its calling method rather than returning immediately. Lambda expects a certain number
of arguments and will also throw and error
the the incorrect number of
arguments are passed.

Here is the same example using Lambda:

```ruby
double = lambda { |n| n * 2 }
array_one_doubled = array_one.map(&double)
array_two_doubled = array_one.map(&double)
array_three_doubled = array_one.map(&double)
```

### Classes

```ruby

class Person
  def initialize(name)
    @name = name # a class instance variable 
  end
end

# An instance of Person
user = Person.new("William")
```