### Super simple method that returns the sum of the elements of an array.

def sum array
    sum = 0 
    x = 0 
    
    while x < array.length
        sum+=array[x]
        x+=1
    end
    
    return sum
end
