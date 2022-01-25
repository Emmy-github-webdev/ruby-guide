def add_two_numbers(num1, num2)
  return num1 + num2 # Explicit return
end

p add_two_numbers(3, 5)
p add_two_numbers(10, 5)
p add_two_numbers(3, 15)

puts


def two_numbers(num1, num2)
  num1 + num2 # Implicit return
end

p two_numbers(3, 5)
p two_numbers(10, 5)
p two_numbers(3, 15)