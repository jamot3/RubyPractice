### This method can be called directly on any array, filtering duplicate elements. 

class Array 
    
    def remove_dup 
        remove self, []
    end
    
    private
    
    
    def remove unfiltered, filtered
        
        if unfiltered.length <= 0 
            return filtered       # returns if all elements have been checked. 
        end
    
        new_unfiltered = []
        current_element = unfiltered.pop
        x = 0 

        while x < unfiltered.length
        
            if unfiltered[x] != current_element
                new_unfiltered.push(unfiltered[x])  # adds only non-duplicate to new list. 
            end
            x+=1
        end
        
        unfiltered = new_unfiltered  # reassigns still unchecked to be reprocessed.
        filtered.push(current_element) # adds unique element to filtered array.
        remove unfiltered, filtered
    end
end

puts ([1, 5, 4, 9, 5, 5, 9, 1, 12, 3, 4]).remove_dup ###Output: 4, 3, 12, 1, 9, 5





