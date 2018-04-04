class Array
    public
    def insert_sort                  
        insertion self, [self.shift] #Wrapper method that passes our unsorted array(self), and 'sorted', which will 
    end                              #ultimately be the sorted array and which we initiate by removing the first
                                     #element of our unsorted array to serve as the pivot value.
    
    private
    def insertion unsorted, sorted
        
        if unsorted.length <= 0 #Terminates the recursive loop if all elements
            return sorted       #moved to sorted. 
        end
       
        current_element = unsorted.shift    #Removes a value from the front of our unsorted array, to be tested
        index = 0                           #against elements in the sorted array.
        while index < sorted.length             
      
            if current_element <= sorted[index]         #If our tested element is less than/equal to the currently
                sorted.insert(index, current_element)   #indexed element in our sorted array, our method 
                break                                   #inserts the element at the indexed point and breaks 
            elsif index == sorted.length - 1            #out of the 'while' loop. 
                sorted.insert(index + 1, current_element)   #Otherwise, eventually, our while loop will reach
                break                                       #the end of our sorted array, at which point our
            end                                             #method will insert the element at the end bc it 
            index+=1                                        #must be greater than every other element. 
        end
        
        insertion unsorted, sorted #Recursion! 
    end
  
end

arr = [5, 4, 6, 9, 8, 1, 7, 3, 2, 10]
puts arr.insert_sort

