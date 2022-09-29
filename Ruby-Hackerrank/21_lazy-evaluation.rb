# Enter your code here. Read input from STDIN. Print output to STDOUT
prime_number = -> (num) do
  (2.upto(num.to_i).select {|n| num.to_i % n.to_i == 0}).size == 1 ? true : false
end

print_array = -> (n) do
1.upto(Float::INFINITY).lazy.select {|a| (a.to_s == a.to_s.reverse && prime_number.(a)) ? a : false }.first(n.to_i)
end

n = gets
print print_array.(n)