### This method recursively adds the elements of a nested array. 

class Array
    public
    def sum_nested  # Wrapper method utilizing 'self' allows us to call method directly on array.
        flat_do self, []
    end
    
    private
    def flat_do array, flattened    # Flattening method. 
        array.each { |element|      # Indexes through each element of an array - recursively processing if element is an array, else 
                                    # adding the elements to a new array, thereby 'flattening' nested array elements.  
            if element.class == Array 
                flat_do element, flattened
            else
                flattened.push(element)
            end
        }
        sum_up flattened # Passes now-flattened array to sum function below.
    end
    
    def sum_up array, sum=0
        array.each { |element|  # Adds each element to 'sum' variable, ultimately returning the sum of all elements.  
            sum+=element
        }
        return sum
    end
end


array = [[1, 2], 3, 4, [5, [6, 7], 8], 9]

puts ((array.sum_nested == 1+2+3+4+5+6+7+8+9) == true) ###Output == true
