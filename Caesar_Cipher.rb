#Caesar Cipher method, which takes a message, and shifts each letter
#by a specified amount (shift_value), and returns a ciphered message.

def caesar_cipher(string, shift_value = 4)  

  #Change the string into its ascii counterpart codes
  ascii_value_array = string.codepoints

  #Shift the ascii codes by a specific number (shift_value)
  ciphered_array = ascii_value_array.map do |element|
    
    #Shift only uppercase letters
    if element.between?(65, 90)
      
      #Loop around to beginning if new ascii code is greater than alphabet code
      new_ascii_number = (element += shift_value) > 90? element - 26: element
      new_ascii_number
    
      #Shift only lowercase letters    
    elsif element.between?(97, 122)
      
    #Loop around to beginning for lowercase letters
      new_ascii_number = (element += shift_value) > 122? element - 26: element
      new_ascii_number
    else
      element    
    end
  end
  
  #Return the new shifted ascii codes to letters, and then a string
  ciphered_text = ciphered_array.map { |element| element.chr }.join("")
end
pp caesar_cipher("What a string!", 5)