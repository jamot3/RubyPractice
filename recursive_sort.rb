### Practice problem from chapter 10 of Chris Pine's "Learn to Program".

def sort array 
    recursive_sort array, []
end

def recursive_sort unsorted, sorted
  
    if unsorted.length == 0 
        return sorted
    end
  
    new_unsorted = []
    x = 0 
    current_smallest = unsorted.pop
  
    while x < unsorted.length
        current_word = unsorted[x]
    
        if current_word < current_smallest 
            new_unsorted.push(current_smallest)
            current_smallest = current_word
        else
            new_unsorted.push(current_word)
        end
    
        x+=1
    end
  
  
    sorted.push(current_smallest)
    unsorted = new_unsorted
    recursive_sort unsorted, sorted
  
end

puts sort(["monet", "ingres", "van gogh", "renoir", "degas", "cezanne", "mondrian"])
puts sort([5, 19, 2, 1, 66, 41, 103, 923, 0])