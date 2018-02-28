### Determines if a string is an isogram -- a word that only contains one iteration of each letter. 
### ex) hello is not an isogram, as it contains two l's. 
### Trumpet is an isogram, as each letter appears only once in the word. 

def isogram string
  x = 0 
  
  while x < string.length
    y = x + 1
    while y < string.length
      if string[x] == string[y]
        return false
      end
      y = y + 1
    end
    x = x + 1
  end
  
  true
end

puts isogram("uncopyrightables")
puts isogram("dermatoglyphics")
puts isogram("bitching")
puts isogram("metalwork")