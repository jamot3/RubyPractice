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
        ### Below, we take a letter off the end of the array, (current_letter), and count
        ### how many times it appears. Letters not equal to current_letter are moved to
        ### new_array. When counting is finished, current_letter alongside its count
        ### are added to the character_count array. The new_array of yet uncounted letters
        ### is renamed sentence_array, and the whole process repeats recursively until 
        ### there are no letters left to count. 
        current_letter = sentence_array.pop
        new_array = []
        counter = 1

        sentence_array.each do |letter|
            if letter == current_letter 
                counter+=1
            else
                new_array.push(letter)
            end
        end
    
        character_count.push("#{current_letter}: #{counter}")
        sentence_array = new_array
        count_em_up sentence_array, character_count
    end
end



