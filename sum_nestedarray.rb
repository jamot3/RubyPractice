### Returns the total sum of all elements within a nested array.

def sum_nested array
    sum = 0 
    x = 0  
    
    while x < array.length
        y = 0 
        while y < array[x].length
            sum+=array[x][y]
            y+=1
        end
        x+=1
    end
    
    return sum
end

            
        