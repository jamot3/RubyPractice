def longest_word sentence
    #Split the sentence by word into an array.
    sentence_array = sentence.split(" ")
    #Create a variable to contain the longest word - currently 'blank'. 
    longest_word = ""
    #Create a variable equal to 0 for the following incrementing function. 
    x = 0 
    
    #Starting at 0, we increment through the array.
    while x < sentence_array.length
        #Create variable to contain the current incremented value of the array.
        current_word = sentence_array[x]
        
        #If the current increment's length is longer than the length of the longest_word,
        #we re-assign longest_word to equal the current increment. 
        if current_word.length > longest_word.length
            longest_word = current_word
        end
        
        #Iterator. 
        x+=1
    end
    
    #Implicit return of the longest word. 
    longest_word
end

    
puts longest_word("The dictionary is a very long book.")=="dictionary"
puts longest_word("Joseph is not a long name.")=="Joseph"
puts longest_word("Onomatopoeia is difficult to spell.")=="Onomatopoeia" 
  