### This method takes in an array and an element. If the array contains the element, it will return 'true', 
### otherwise it will return 'false'.

def rec_search array, element
    
    if array.length <= 1
        return array[0] == element
    end
        
        
        
    x = array.length/2
    
    if array[x] > element
        rec_search array.slice(0, x), element
    else
        rec_search array.slice(x, array.length - 1), element
    end
    

end


### Okay, the above code is as 'optimized' a recursive search function as I am capable of, at the moment.
### Searching an array with a length of 224 elements 10,000 times, the above method took .093 seconds.
### The below method performs the same 10,000 repetitions in just .016 seconds. However, before I realized I could
### utilize the 'slice' method  for this function (thanks to scouring ennumerable blog posts related to Ruby & recursion)
### the above recursive method clocked in at a whopping .28 seconds. One step at a time. 



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



### BELOW - first attempt at a recursive search function. Very slow, very inefficient - forgot about Ruby's wonderful 'slice' method. 

#def rec_search array, element
    
#    if array.length <= 1
#       return array[0] == element
#    end
 
#    new_array = []
#    x = array.length/2
    
 
#    if array[x] > element
#        y = 0 
#        while y < x
#            new_array.push(array[y])
#            y+=1
#        end
#    else
#       while x < array.length
#           new_array.push(array[x])
#           x+=1
#       end
#   end
#   
#   array = new_array
#   rec_search array, element
#
#end
