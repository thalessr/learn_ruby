def translate(word)
	vowels_array = %w(a e i o u)
	consonants_array = ("a".."z").to_a - vowels_array
	if(vowels_array.include?(word[0]))
		word+"ay"
	elsif ((consonants_array.include?(word[0])) && (consonants_array.include?(word[1])))
		first_letters = word[0,2]
        word[2,word.length - 1]+first_letters+"ay"

	elsif(consonants_array.include?(word[0]))
        first_letter = word[0]
        word[1,word.length - 1]+first_letter+"ay"
	end 
end