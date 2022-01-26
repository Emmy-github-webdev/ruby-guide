num = 1000

if num.respond_to?("next")
 p  num.next
end

if num.respond_to?("length")
  p  num.length
end

 #this will fail beacuse int do not have length

greeting = "Hello"

if greeting.respond_to?("length")
 p  greeting.length
end

puts "Hello".respond_to?(:length)
puts "Hello".respond_to?(:next)