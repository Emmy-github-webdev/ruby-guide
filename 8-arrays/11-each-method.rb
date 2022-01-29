fruits = ["Apple", "Orange", "Pineapple", "Banana", "Pear"]

fruits.each do |fruit|
  puts fruit.upcase
end

[1, 2, 3, 4, 5].each do |num|
  square = num * num
  puts "The squre of #{num} is #{square}"
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd = []

numbers.each do |number|
  if number.odd?
    odd.push(number)
  end
end

p odd


num_Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = 0
odds = 0

num_Array.each do |sum_array|
  if sum_array.even?
    evens += sum_array
  elsif sum_array.odd?
    odds += sum_array
  else
    puts sum_array 
  end
end

p evens
p odds

#using method
def add_odds_or_evens(arrays)
  odds = []
  evens = []
  arrays.each { |array| array.even? ? evens << array : odds << array } 
  p odds
  p evens
end

add_odds_or_evens([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])