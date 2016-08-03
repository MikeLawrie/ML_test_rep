alphabet = ("a".."z")
alphabet = alphabet.to_a
letter_number = 0
vowels=["a","e","i","o","u"]
vowel_number = 0
vowel_hash = Hash.new

while  letter_number < alphabet.length 
  while vowel_number < vowels.length
    if alphabet[letter_number] == vowels[vowel_number]
 	    current_letter = alphabet[letter_number]
      vowel_hash[current_letter] = letter_number +1
    end
    vowel_number +=1
  end
  letter_number +=1
  vowel_number = 0
end

puts vowel_hash