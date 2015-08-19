def translate phrase
	arr = phrase.split(" ")
	arr.map!{|w| translate_word(w)}
	arr.join(" ")
end

def translate_word word	
	pig_word = ""
	word_l = word.length
	if(!is_vowel?(word[0])) 
		if(!is_vowel?(word[1]) || (word[0]=='q' && word[1]=='u'))
			if(!is_vowel?(word[2]) || (word[1]=='q' && word[2]=='u'))
				pig_word =	word[3, word_l] + word[0,3] + "ay"			
			else
				pig_word =	word[2, word_l] + word[0,2] + "ay"
			end
		else
			pig_word =	word[1, word_l] + word[0,1] + "ay"
		end
	else
		pig_word = word + "ay"
	end
	pig_word
end

def is_vowel? character
	if(character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u')
		true
	else
		false
	end
end
