5.times{puts "Emmanuel is handsome!"} # this is a block that tells how many times the function will be run. In this case is 5 times

# Alternatively and the best practice

3.times do |count| # where count in the pipe is a block value
  puts "we are currently on loop number #{count}"
  puts "Emmanuel is incredible"
  puts "I'm enjoying ruby tutorial"
end

5.times{|k| puts "Emmanuel is handsome at #{k}"}


#Excercise

# Use the times method to output the first ten multiple of 3 (3, 6, 9, 12 ... 30)

10.times do |c|
  puts "#{3 * (c + 1)}"
end

# Alternatively

10.times{|c| puts "#{3 * (c + 1)}"}