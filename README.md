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

