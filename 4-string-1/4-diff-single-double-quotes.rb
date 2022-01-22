=begin
  The difference between single and double quotes are
  1. line break do not work in single quote
  2. Single quote do not interpolate
=end

puts "Yes\nNo"

puts 'Yes\nNo'

phrase = "Hello world"

puts "#{phrase} John"

puts '#{phrase} John'