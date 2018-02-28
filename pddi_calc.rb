### Returns perfect digit-to-digit invariants (PDDI) up to a given limit. PDDI are natural numbers that are equal to the sum of each digit raised to the power of itself. Ex) 3435 --- 3**3 + 4**4 + 3**3 + 5**5 == 3435

def pddi limit

  pddi = []
  num = 0 
  while num < limit
    num_length = num.to_s.length
    num_string = num.to_s
    y = 0 
    sum = 0 
    
    while y < num_length
      sum = sum + (num_string[y].to_i ** num_string[y].to_i)
      y+=1
    end
    
    if sum == num
      pddi.push(num)
    end
    num += 1
  end
  
  return pddi
end

