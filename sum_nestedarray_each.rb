### Returns the sum of each individual array within a nested array.

def sum_nested_each array
    sum_array = []
    x = 0 
    
    while x < array.length
        sum = 0 
        y = 0 
        while y < array[x].length
            sum+=array[x][y]
            y+=1
        end
        sum_array.push(sum)
        x+=1
    end
    
    return sum_array

end

