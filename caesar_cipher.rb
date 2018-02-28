#beware! what follows is completely unoptimized code.

def caesar_cipher(offset, string)

  cipher = Hash.new
  cipher[0] = "a"
  cipher[1] = "b"
  cipher[2] = "c"
  cipher[3] = "d"
  cipher[4] = "e"
  cipher[5] = "f"
  cipher[6] = "g"
  cipher[7] = "h"
  cipher[8] = "i"
  cipher[9] = "j"
  cipher[10] = "k"
  cipher[11] = "l"
  cipher[12] = "m"
  cipher[13] = "n"
  cipher[14] = "o"
  cipher[15] = "p"
  cipher[16] = "q"
  cipher[17] = "r"
  cipher[18] = "s"
  cipher[19] = "t"
  cipher[20] = "u"
  cipher[21] = "v"
  cipher[22] = "w"
  cipher[23] = "x"
  cipher[24] = "y"
  cipher[25] = "z"
  

  cipher_string = ""
  
  x = 0
  while x < string.length
    y = 0 
    while y <= 25
      if string[x] == cipher[y] && y <= (25 - offset)
        cipher_string += cipher[y + offset].to_s
      elsif string[x] == cipher[y] && y + offset > 25
        cipher_string += cipher[(y + offset) - 26].to_s
      elsif string[x] == " "
        cipher_string += " "
      end
      y = y + 1
    end
    x = x + 1
  end
  

  cipher_string_split = cipher_string.split(" ")
  cipher_string_new = cipher_string_split.join(" ")
  return cipher_string_new 
end


puts caesar_cipher(3, "hello") 


