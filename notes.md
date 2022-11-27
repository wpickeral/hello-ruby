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

def add(a,b)
  return a + b
end

```

This is the same as:

```ruby

def add(a,b)
  a + b
end
```

