# Enter your code here. Read input from STDIN. Print output to STDOUT
require 'prime'
print_prime_number = -> (n) do
    Prime.lazy.select {|x| x if x.to_s == x.to_s.reverse}.first(n)
end

n = gets.to_i
print print_prime_number.(n)
