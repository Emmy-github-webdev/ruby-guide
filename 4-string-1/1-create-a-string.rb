puts "I'm Emmanuel Ogah"
puts "Includes character s and number: ! @ # %*(()_"

name = "Emmanuel"
price = "$24"

puts name, price

# Empty string
empty = ""
puts empty
puts empty.length

# space is a character
space = " "
puts space
puts space.length

# string object
puts name.class
puts space.class 
puts empty.class

#create a brand new string
name = String.new("Emmanuel")
p name