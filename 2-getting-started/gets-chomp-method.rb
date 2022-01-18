#gets method get input from users e.g gets
#chomp is called directory on the string to remove the new line character e.g gets.chomp

puts "Hi, what's your name?"
name = gets.chomp

puts "Great! What's your age?"
age = gets.chomp.to_i # to_i convert the input to integers

puts "Cool, so your name is #{name} and you are #{age} years old."