### This method recursively flattens and adds elements of an array. Removing lines 19,
### 20, and 21  and removing the "###" before the comment on line 23 will cause the
### function to return a flattened version of the array. 

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
    
    ### return flat_array
     
end

print add_nested([4, [[2], [1]], [3]])