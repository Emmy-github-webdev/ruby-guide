if 5 < 2
  puts "This logic is true"
end

#Nothing will display beacuse it is false

if 5 > 2
  puts "This logic is true"
end

# This returns true

password = "topsecret"

if password == "topsecret"
  puts "You have successfully logged in"
end

if password == "psecret"
  puts "You have successfully logged in"
end
# this will return nothing

word = "kangaroo"

if word.length == 8
  puts "Your word is 8 letters long"  
end

if word.length == 2
  puts "Your word is 2 letters long"  
end

t = "zebra"

if t.include?("eb")
  puts "Your t contains eb in it"
end