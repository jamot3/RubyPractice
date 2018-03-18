### This is my initial answer to a coderbyte challenge that asks us to return 'true' if 
### there are 3 question marks found in between every pair of numbers that sums to 10 within
### a given string - and returns 'false' if there aren't 3 qmarks between a pair of numbers
### that sums to 10 and if there are no numbers that sum to 10. I know this solution is rather
### convoluted, however, it's what I immediately came up with and I'll come up with a better
### solution soon. 
###
### Basically, my approach was to search for each pair that adds to 10. If a pair is found, the method
### slices out a new string, starting from the first num and ending with the last num, and tests to see 
### if there are three question marks between the two nums. If a pair fails to meet the 3 q.mark condition,
### the method immediately returns 'false'. Otherwise, we iterate +1 on our 'success' counter for each
### successful instance. At the end of our method, if we had any 'successes', our method returns 'true.'
### otherwise, it means that we didn't have any instances of numbers summing to 10, questions marks or not,
### so our method returns 'false'. 

def questionsmarks str
    string = str.split("")
    x = 0 
    success = 0
    
    while x < string.length
        y = 0
        current_char = string[x]
        
        while y < string.length
            other_char = string[y]
            
            if (y>x) && (current_char.to_i + other_char.to_i) == 10
                new_string = string.slice(x, y-x)
                z = 0 
                counter = 0 
                while z < new_string.length
                    if new_string[z] == "?"
                        counter+=1
                    end
                    z+=1
                end
                
                if counter < 3
                    return false
                elsif counter >= 3
                    success+=1
                end
                
            end
            y+=1
        end
        x+=1
    end
    
    if success > 0 
        return true
    end
    
    false
end


puts (questionsmarks"acc?7??sss?3rr1??????5") == true ###Output == true
puts (questionsmarks"aba5bdbdb3bsbdbr?2") == false    ###Output == true
puts (questionsmarks"abab5???5") == true              ###Output == true
puts (questionsmarks"?????3?dfdfd?7?????") == false   ###Output == true
puts (questionsmarks"??2???8ddd??d2??f") == false     ###Output == true
