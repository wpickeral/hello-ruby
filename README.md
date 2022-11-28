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

#### String Interpolation

```
# Assign the variable
message = "Hello, World!"

p "This is a string #{message}"
```

#### Ranges

- 1...10 is a range that does not include 10
- 1..10 is a range that includes 10

```ruby
1...10.each { |i| p i }
```

### Conditionals

#### For loops

```ruby

# unconventional for loop
numbers = [1, 2, 3, 4, 5]
for number in numbers
  p number
end

# conventional for loop
# The each method is a method that is available to all arrays

numbers.each { |number| p number }

# We can get the index of the array as well
# The each_with_index method is a method that is available to all arrays

numbers.each_with_index { |number, index| p "#{index}: #{number}" }
```

#### While loops

```ruby
i = 0
while i < 5
  p i
  i += 1
end
```

#### If statements

```ruby

if 1 < 2
  p "Yes, it is!"
else
  p "No, it is not!"
end
```

#### Unless statements

```ruby

unless 1 > 2
  p "Yes, it is!"
else
  p "No, it is not!"
end
```

#### Case statements

```ruby
age = 25
case age
when 0..2
  p "baby"
when 3..6
  p "little child"
when 7..12
  p "child"
when 13..18
  p "youth"
else
  p "adult"
end
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

Array.map will do the same thing

```ruby
nums = [1, 2, 3, 4, 5]
nums.map { |n| n * n }
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

We can pass a block to a method as an argument and the method will execute the block.
There are several ways to do this

```ruby

def block_method
  yield
end

# Call the method and pass a block
block_method { puts "This is a block" }

# We can also pass a block to a method and pass a parameter to the block
def block_method_with_param
  yield("This is a block")
end

block_method_with_param { |param| puts param }

# We can also pass multiple parameters 

def block_method_with_params
  yield("This is a block", "This is another block")
end

block_method_with_params { |param1, param2| puts param1; puts param2 }

# We can also pass a block without using the yield keyword

def block_method_with_params(&block)
  # &block is a proc
  block.call("This is a block", "This is another block")
end

block_method_with_params { |param1, param2| puts param1; puts param2 }


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

Or we can create a new Proc to follow the DRY principle

```ruby
double = Proc.new { |n| n * 2 }
array_one_doubled = array_one.map(&double) # Since map expects a block we use "&" to convert the Proc to a block
array_two_doubled = array_two.map(&double)
array_three_doubled = array_three.map(&double)
```

#### Lambda

Lambda is very similar to Proc. A Proc will return after it is called. A lambda will return after it is
called and will continue to execute the rest of the code in the calling method.

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

#### More on variables

Variables were introduced in the previous section. There are four types of variables in Ruby with different scopes.

1. Local variables - only available in certain methods
2. Instance variables - members of a certain class instance belonging to an instance of a class
3. Class variables - members of a class belonging to a certain class not an instance
4. Global variables - Anywhere in the program. Can also be changed from anywhere in the program. Not recommended.

- local variables start with a lowercase letter or underscore `_`
- instance variables start with an at sign `@`
- class variables start with two at signs `@@`
- global variables start with a dollar sign `$` if the variable is initialized in a method it will be global to the
  entire program. If a variable is initialized outside of a method it will be global to the entire program by default.

What about methods?

1. Some methods are available to all instances of a class
2. Some methods are available to a single instance of a class
3. Some methods are available everywhere

### Class Inheritance

Class inheritance is when one class takes on the methods and attributes of another class

Here is a simple example. RaceCar can hook because it is a subclass of Car!

```ruby

class Car
  def initialize(name, model, year)
    @make = name
    @model = model
    @year = year
  end

  def honk_horn
    puts "Honk Honk!"
  end
end

# All cars honk, but not all cars go super fast!
# Lets make a new class called RaceCar and inherit Car

class RaceCar < Car
end

my_car = RaceCar.new('Chevy', 'Corvette', 2022)

puts my_car.honk_horn # Honk Honk!
```

The less `<` tells `RaceCar` to inherit the properties and attributes from Car.

**Mental model**: It looks like the RaceCar class is eating the Car if you visualize
the `<` being a mouth. By eating the `Car` class, the `RaceCar` class takes on the `Car` class attributes and methods.

#### Overide!

You can overide a method on the inherited class which will replace the inherited version.

Let's override the `honk_horn` method

```ruby

class RaceCar < Car
  def honk_horn
    puts "Honk Honk! I'm driving a Corvette!"
  end
end

my_car = RaceCar.new('Chevy', 'Corvette', 2022)

puts my_car.honk_horn 
```

Result

```
Honk Honk! I'm driving a Corvette!
```

You can access methods or attributes from a superclass in Ruby using the `super` method
This is useful when you need to override a method an also maintain functionality from the super class

You must call the super class inside of the method that you want to use from the super class.

For example let's say we wanted to keep the `honk_horn` method from `Car` and just add to it.

We could do something link this:

```ruby

class RaceCar < Car
  def honk_horn
    super
    puts "I'm driving a Corvette!"
  end
end

my_car = RaceCar.new('Chevy', 'Corvette', 2022)

puts my_car.honk_horn

```

Result

```
Honk Honk!
I'm driving a Corvette!
```

**Important**: Ruby is not a multi inheritance language
There can be only one superclass 