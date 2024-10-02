#Caesar Cipher method, which takes a message, and shifts each letter
#by a specified amount (shift_value), and returns a ciphered message.

def caesar_cipher(string, shift_value = 4)  

  #Change the string into its ascii counterpart codes
  ascii_value_array = string.codepoints

  #Shift the ascii codes by a specific number (shift_value)
  ciphered_array = ascii_value_array.map do |element|
    
    #Shift only uppercase letters
    if element.between?(65, 90)
      
      #Loop around to beginning if new codepoint is greater than 90 (ascii for Z)
      (element += shift_value) > 90? element - 26: element
    
    #Shift only lowercase letters    
    elsif element.between?(97, 122)
      
      #Loop around to beginning for lowercase letters
      (element += shift_value) > 122? element - 26: element
    
    #keep original codepoints of non-alphabet characters
    else
      element    
    end
  end
  
  #Return the new shifted ascii codes to letters, and then a string
  ciphered_text = ciphered_array.map { |element| element.chr }.join("")
end

print caesar_cipher("What a string!", 5)