def fizzbuzz(number)
  i = 1
  until i > number
    i += 1
    if i % 3 == 0 && i % 5 == 0
      puts "Fizzbuzz"
    elsif i % 3 == 0
      puts "Fizz"
      elsif i % 5 == 0
        puts "Buzz"
      else
        i
    end
  end
end

fizzbuzz(30)