### Method takes in an array and changes all even numbers to odd numbers. Just practicing
### recursion some more. Of course, a while loop is much simpler for this kind of method. I've
### included a while loop version below this method, and an even simpler way of accomplishing 
### the same result using Ruby's built-in '.map' method.

def even_to_odd array
    change_to_odd array, []
end

def change_to_odd old_array, new_array
    ### Terminates the recursive function. 
    if old_array.length <= 0
        return new_array.reverse
    end
    
    ### Removes the last number.
    current_num = old_array.pop
    ### Tests if it is even - if so, adds 1 to make it odd. If not, skips this step.
    if current_num % 2 == 0 
        current_num +=1
    end
    ### Adds current_num to new_array, old_array becomes new_array & method calls itself
    ### until termination criteria is met. 
    new_array.push(current_num)
    change_to_odd old_array, new_array
end



### Below is a simple, incremented 'while' loop version of this method. 

def even_odd array
    x = 0 
    while x < array.length
        if array[x] % 2 == 0 
            array[x] = array[x] + 1
        end
        x+=1
    end
    
    array
end

### Even simpler way of changing evens to odds - using the 'map' method directly on the array. However simple, this function
### has the distinct disadvantage of having to be typed out every time you want to use it. If you define a method 
### like we did above, you can call it on any array in the future just by typing even_to_odd([1, 4, 6, 7, 8, 10]). The simplicity
### of 'map' certainly has it's place, though, esp. as a one-off function where you may not want to spend the time defining a method.

array = [1, 3, 4, 6, 7, 8, 10]
puts array.map { |num| 
    if num%2 == 0 
        num+=1
    else
        num
    end }.join(",")

### output== 1,3,5,7,7,9,11
