def factorial(num)
    if num < 0 
        return "No factorials for negatives, friendo."
    elsif num == 0 || num == 1
        1
    else
        num * factorial(num - 1)
    end
end

