### Method takes in a string and returns the count of all characters that appear in that string, including 
### punctuation. Method does not count spaces as characters. The method is wrapped in class 'String' so that 
### the character_count method may be called directly on any string. 

class String
    def character_count 
        string = self.downcase.split("")
        string.each do |character|             
            if character == " "
                string.delete(character)
            end
        end
        count_em_up string.sort.reverse, []
    end
    
    private
    def count_em_up sentence_array, character_count
        ### Terminates the method & returns result if all letters have been counted. 
        if sentence_array.length <= 0 
            return character_count
        end
       
        current_letter = sentence_array.pop
        new_array = []
        counter = 1
        ### Compares each letter of the array to current_letter, incrementing a counter if they're the same.
        ### If they aren't the same, the uncounted letter is assigned to new_array. 
        sentence_array.each do |letter|
            if letter == current_letter 
                counter+=1
            else
                new_array.push(letter)
            end
        end
        ### The current_letter, and its respective counter, are added to the character_count array. 
        ### Sentence_array is re-defined as new_array, consisting only of uncounted letters, and 
        ### then the function calls itself, counting until completion.
        character_count.push("#{current_letter}: #{counter}")
        sentence_array = new_array
        count_em_up sentence_array, character_count
    end
end



