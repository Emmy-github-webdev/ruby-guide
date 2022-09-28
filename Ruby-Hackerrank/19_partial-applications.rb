-> (another_number) do
  numerator = Math.gamma(number + 1)
  fact_another_number = Math.gamma(another_number + 1)
  fact_both_numbers = Math.gamma((number-another_number)+1)
  denominator = fact_another_number*fact_both_numbers
  (numerator / denominator).to_i
end
end
n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
