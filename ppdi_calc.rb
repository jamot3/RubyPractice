### Returns narcissistic numbers, or pluperfect digital invariants (PPDI), up to a given limit. PPDI are numbers that are equivalent to the sum of each digit raised to the number of digits in the number. Ex) 153 --- 1**3 + 5**3 + 3**3 == 153. 

def ppdi limit
  
  num = 0 
  ppdi_list = []
  
  while num < limit
  
    num_length = num.to_s.length
    num_string = num.to_s
    y = 0 
    sum = 0
    
    while y < num_length
      sum = sum + (num_string[y].to_i ** num_length)
      y +=1
    end
    
    if sum == num
      ppdi_list.push(num)
    end
      
    num+=1
  end
  
  return ppdi_list
end

puts ppdi 10000