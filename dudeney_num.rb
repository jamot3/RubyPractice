### A program that returns Dudeney numbers up to a given limit. A Dudene number is a number if the sum of its digits equal the cube root of the number. Ex) 512 -- sum of digits: 5+1+2 == 8.  Perfect cube of 512 == 8. 

def dudeney limit
  dudeney_nums = []
  num = 0
  
    while num < limit
      y = 0
      num_sum = 0
      num_str = num.to_s
    
      while y < num_str.length
        num_sum+=num_str[y].to_i
        y+=1
      end
    
      if num_sum**3 == num && num > 0
        dudeney_nums.push(num)
      end
          
      num+=1
    end
    
  return dudeney_nums
end


puts dudeney 20000