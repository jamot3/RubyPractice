### Returns factorions up to a given limit. A number is a factorion if it equals the sum of the factorials of its digits. Ex) 145 -- 1! + 4! + 5! == 145

def factorion limit
  num = 0 
  factorion = []
  
  while num < limit
    y = 0 
    num_string = num.to_s
    num_length = num_string.length
    sum = 0
    
    while y < num_length
      n = num_string[y].to_i
      x = 0
      fact = 1
      
      while x < n
        fact = fact * (n-x)
        x = x + 1
      end
      
      sum+=fact
      y+=1
      
      if sum == num
        factorion.push(num)
      end
      
    end
    
    num+=1
  end
  
  return factorion
end

puts factorion 50000
      
    
  