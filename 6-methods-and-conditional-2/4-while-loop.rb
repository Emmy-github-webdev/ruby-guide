i = 1

while i < 10
  puts i
  i += 1
end


status = true

while status
  print "Enter your username: "
  username = gets.chomp.downcase
  print "Enter your password: "
  password = gets.chomp.downcase

  if username == "emmanuel" && password == "123"
    puts "Login successful!"
    status = false
  elsif username == "quit" || password == "quit" 
    puts "Goodbye! Better luck next time!"
    status = false
  else
    puts "Try again or enter quit"
  end
end