grade = "F"

if grade == "A"
  puts "Very Excellent"
elsif grade == "B"
  puts "Excellent"
elsif grade == "C"
  puts "Good"
elsif grade == "D"
  puts "pass"
elsif grade === "E"
    puts "Fair"
else 
  puts "Fail"

end





def even_or_odd(number)
  if number.odd?
    "The number is odd"
  else  
    "The number is even"  
  end
end

p even_or_odd(9)