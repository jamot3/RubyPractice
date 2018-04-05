#Just some fun. Method returns secret code embedded in a string - the first letter of each 
#word & last letter of each word in a given string spell out two separate messages.

def decoder string
    string_array = string.split(" ") 
    first_message = ""
    second_message = ""
    
    index = 0
    while index < string_array.length
        current_word = string_array[index]
        first_message+=current_word[0]
        second_message+=current_word[current_word.length - 1]
        index+=1
    end
    
    return first_message, second_message
end

puts decoder "Go over odd done jogger oof boo moo Assad N!" ##OUTPUT: GoodjobmAN , orderfood!