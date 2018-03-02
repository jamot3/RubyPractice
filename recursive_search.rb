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


### As it stands, this code is completely unoptimized. It takes FOREVER to search for an element. 
### I ran it 10,000 times on an array consisting of 223 elements, and it took .251794 seconds to compute. 
### Compare this to the simple, non-recursive 'while' loop code below, which completes 10,000 iterations of
### the same code in .015628 seconds. I believe I can beat the while loop using recursion, I just have to figure out how. 

def search array, element
    x = 0 
    while x < array.length
        
        if array[x] == element
            return true
        end
        x+=1
    end
    
    false
end
