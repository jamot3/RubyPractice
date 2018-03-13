### Kaprekars constant is 6174. If you take any four-digit number that has at least two
### different digits, and arrange the numbers in descending and ascending order and subtract
### the smaller from the larger (e.g. if given 6172 -- 6721 - 1276), inserting 0s as needed
### to make 4 digit num, you will always (eventually) get 6174 as the answer. This function
### returns the number of iterations it takes to reach Kaprekars constant. 

def KaprekarsConstant(num)
    num_rep = 0 
    
    while num != 6174
        small = num.to_s.split("").sort.join("").to_i
        big = num.to_s.split("").sort.reverse.join("").to_i
        num = big - small
        num = num.to_s
        if num.length < 4
            num = num + "0"
        end
        num = num.to_i
        num_rep +=1
    end
    num_rep
end

puts KaprekarsConstant(2111)