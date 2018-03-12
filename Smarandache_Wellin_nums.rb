### Smarandache–Wellin numbers are numbers that consist of the primes of that base. e.g. four digit
### SW number in base 10 is 2357. Five digit is 235711. The below function will return SW numbers
### up to a given number of digits in length. 

def sw digits
    primes = []
    number = 0 
    while primes.length < digits
        if ((number % 2 == 0 && number != 2) || (number % 3 == 0 && number != 3) || (number <= 1)) == false
            primes.push(number)
        end
        number +=1
    end
    
    sw = []
    number = ""
    x = 0 
    while number.length < digits
        number += primes[x].to_s
        sw.push(number)
        x+=1
    end
    
    return sw
end

puts sw(10)