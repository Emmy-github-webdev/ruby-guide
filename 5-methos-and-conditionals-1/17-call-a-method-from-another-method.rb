def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operator = "add")
  if operator == "add"
    add(a, b)
  elsif operator == "substract"
    sub(a, b)
    elsif operator == "multiply"
      multiply(a, b)
    else
      "That is not a right operator"
  end
end

p calculator(4, 1)
p calculator(4, 1, "substract")
p calculator(4, 1, "sub")
p calculator(4, 7, "multiply")