alphabet = "A".."Z"

puts alphabet.first(40)

puts alphabet.first(4)

# size method
numbers = 1..127 #inclusive of last number
p numbers.size #127

number = 1...127 #Exclusive of last number
p number.size #126

#include? method. This checks if a value exist with a given range
letters = "a".."m"
p letters.include?("l") #true
p letters === "l" #true
p letters.include?("o") #false
p letters === "o" #false

counts = 20 .. 50
p counts.include?(40)
p counts.include?(61)