### Another attempt at recursion. Returns 'n' fibonacci numbers. This function 
### still doesn't utilize recursion as well as I know it could, because 
### I feel like the self-referential nature of the fibonacci seq. lends itself 
### particularly well to a recursive function. As it stands, this function takes 
### .125 seconds to find 10 fibonacci #'s 100,000 times. The non-recursive 
### function I built utilizing a 'while' loop perform the same operation in just .10 seconds. 



def fibonacci n
    fib n, [0, 1]
end

def fib n, array
    
    if array.length >= n 
        return array
    end

    array.push(array[array.length - 1] + array[array.length - 2])
    fib n, array
end
