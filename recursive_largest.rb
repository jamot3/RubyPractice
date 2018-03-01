def largest array
    
    if array.length <= 1
        return array
    end
    
    x = 0 
    if array[x] > array[x + 1]
        array.delete_at(x + 1)
    else
        array.delete_at(x)
    end
    
    largest array   
end

puts largest [5, 6, 9, 15, 3, 14, 99, 0, 14, 17]
puts largest ["bird", "animal", "xylophone", "zebra", "lioness"]
    
        
    
    
    