5.downto(1) {|i| puts "Countdown: #{i}"} # downto begins countdown from 5 to 1

# Alternatively

5.downto(1) do |number|
  puts "We are in number #{number}"  
end

puts

5.upto(10) do |number|
  puts "We are in number #{number}"  
end

puts


5.step(100, 5) do |number|
  puts "We are in number #{number}"  
end