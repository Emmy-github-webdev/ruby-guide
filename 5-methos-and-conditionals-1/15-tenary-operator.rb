if 1 < 2
  puts "Yes, it is"
else 
  puts "No, it is not!"
end

# Tenary 
puts 2 < 1 ? "Yes, it is" : "No it is not!"


def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

puts even_or_odd(4)
puts even_or_odd(9)

#Assignment
pokemon = "Pikachu"
puts pokemon == "Charizard" ? "Fireball" : "That is not Charizard"