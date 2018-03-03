### Recursive function that adds up all elements of an array.
### 

def sum array
    recursive_sum(array, 0)
end
    
def recursive_sum array, n, sum=0
    if n == array.length
        return sum
    end
    
    sum = array[n] + recursive_sum(array, n+1, sum)
end



