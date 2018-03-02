### Dictionary challenege problem from chapter 10 of Chris Pine's "Learn to Program".


def dictionary_sort array
    sort array, []
end

def sort unsorted, sorted
    
    if unsorted.length <= 0 
        return sorted
    end
    
    new_unsorted = []
    x = 0 
    first_word = unsorted.pop.downcase
    
    while x < unsorted.length
        current_word = unsorted[x].downcase
        
        if current_word < first_word
            new_unsorted.push(first_word)
            first_word = current_word
        else
            new_unsorted.push(current_word)
        end
        
        x+=1
    end
    
    sorted.push(first_word.capitalize)
    unsorted = new_unsorted
    sort unsorted, sorted
end

