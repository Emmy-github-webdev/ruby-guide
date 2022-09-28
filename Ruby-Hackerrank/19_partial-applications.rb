combination = -> (n) do
  -> (r) do
      numerator = Math.gamma(n + 1)
      r_number = Math.gamma(r + 1)
      r_n_number = Math.gamma(r_number + 1)
      denuminator = r_number * r_n_number
      (numerator / denuminator).to_i
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
