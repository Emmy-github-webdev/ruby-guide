# Your code here
def prime?(n)
  return false if n <= 1
 
  for i in (2..n/2)
      return false if n % i == 0
  end
  return true
 end