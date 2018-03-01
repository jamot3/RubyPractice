def factorial(n)
  x = 0
  fact = 1
  
  while x < n 
    fact = fact * (n - x)
    x = x + 1 
  end
    
  return fact 
  
end

puts factorial(0) == 1
puts factorial(3) == 6
puts factorial(4) == 24

