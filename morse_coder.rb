### Morsecode translator -- places a space between letters of the same word, and a " / " between words. 

def morsecode string
  morse = Hash.new
  morse[:a] = ".-"
  morse[:b] = "-..."
  morse[:c] = "-.-."
  morse[:d] = "-.."
  morse[:e] = "."
  morse[:f] = "..-."
  morse[:g] = "--."
  morse[:h] = "...."
  morse[:i] = ".."
  morse[:j] = ".---"
  morse[:k] = "-.-"
  morse[:l] = ".-.."
  morse[:m] = "--"
  morse[:n] = "-."
  morse[:o] = "---"
  morse[:p] = ".--."
  morse[:q] = "--.-"
  morse[:r] = ".-."
  morse[:s] = "..."
  morse[:t] = "-"
  morse[:u] = "..-"
  morse[:v] = "...-"
  morse[:w] = ".--"
  morse[:x] = "-..-"
  morse[:y] = "-.--"
  morse[:z] = "--.."
  morse[1] = ".----"
  morse[2] = "..---"
  morse[3] = "...--"
  morse[4] = "....-"
  morse[5] = "....."
  morse[6] = "-...."
  morse[7] = "--..."
  morse[8] = "---.."
  morse[9] = "----."
  morse[0] = "-----"

  morse_string = ""
  
  x = 0 
  
  while x < string.length
    
    if string[x] != " "
      morse_string += morse[string[x].downcase.to_sym].to_s + " "
    elsif 
      morse_string += " / "
    end
    x +=1
  end
   
  return morse_string
end
puts '----------------------------------------------------------------'
puts '---------------------Morse-code Translator----------------------'
puts '----------------------------------------------------------------'
puts "Enter a sentence that you would like translated into morse code."
input = gets.chomp.downcase
puts ""
puts "*BEEP* *BOOP* *BOP* *BEEP*"
puts "Here's your sentence:"
puts morsecode input