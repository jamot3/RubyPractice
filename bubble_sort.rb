# An implentation of bubble sort based on the pseudocode found on the 
# bubble sort wikipedia page. 

def bubble_sort array
    n = array.length
    
    while n > 0 
        swapped = 0
        index = 1
        while index < n
            if array[index - 1] > array[index]
                swapped = index
                array.insert(index - 1, array[index])
                array.delete_at(index + 1)
            end
            index+=1
        end
        n = swapped
    end
    
    return array
end

arr = [5, 2, 7, 1, 9, 10]
puts (bubble_sort(arr) == [1, 2, 5, 7, 9, 10]) == true #Output: True