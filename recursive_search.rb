### This is a holy mess, but I'm going to stop working on it for now because I stopped working on it. (Is that a recursion joke?) This method takes in an array and an element. If the array contains the element, it will return 'true', otherwise it will return 'false'.

def rec_search array, element
    
    if array.length <= 1
        return array[0] == element
    end
    
    new_array = []
    x = array.length/2
    
    if array[x] > element
        y = 0 
        while y < x
            new_array.push(array[y])
            y+=1
        end
    else
        while x < array.length
            new_array.push(array[x])
            x+=1
        end
    end
    
    array = new_array
    rec_search array, element

end


puts rec_search ["Aardvark", "Duck", "Deer", "Falcon"], "Falcon" ### == true
puts rec_search ["Aardvark", "Duck", "Deer", "Falcon"], "Ocelot" ### == false
puts rec_search ["Potato", "Tomato", "Carrot", "Grape", "Cherry"], "Carrot" ### == true
