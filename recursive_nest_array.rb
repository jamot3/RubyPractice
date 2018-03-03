### This method recursively flattens and adds elements of an array. Removing lines 18,
### 19, and 20 will strip the method of its 'addition' function and simply return the
### flattened array.  

def add_nested array
    add_them_up array, []
end

def add_them_up array, flat_array
    
    array.each { |item|
        if item.class == Array
            add_them_up item, flat_array
        else
            flat_array.push(item)
        end
    }
    
    sum = 0 
    flat_array.each { |item| sum += item}
    return sum
     
end

puts add_nested([4, [[2], [1]], [3]])