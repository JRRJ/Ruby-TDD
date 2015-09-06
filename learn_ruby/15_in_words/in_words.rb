class Fixnum

	def in_words
		phrase=""

		#trillions
		if self >= 1000000000000
			phrase << (self/1000000000000).in_words << " " << "trillion"
			temp = self - (self/1000000000000)*1000000000000
			phrase << " " << temp.in_words if temp>0
		#billions
		elsif self >= 1000000000
			phrase << (self/1000000000).in_words << " " << "billion"
			temp = self - (self/1000000000)*1000000000
			phrase << " " << temp.in_words if temp>0
		#millions
		elsif self >= 1000000
			phrase << (self/1000000).in_words << " " << "million"
			temp = self - (self/1000000)*1000000
			phrase << " " << temp.in_words if temp>0
		#thousands
		elsif self >= 1000
			phrase << (self/1000).in_words << " " << "thousand"
			temp = self - (self/1000)*1000
			phrase << " " << temp.in_words if temp>0
		#hundreds
		elsif self >= 100
			phrase << (self/100).in_words << " " << "hundred"
			temp = self - (self/100)*100
			phrase << " " << temp.in_words if temp>0
		end

		if self.to_s.length == 1
			case self
				when 0 
					phrase='zero'
				when 1 
					phrase='one'
				when 2 
					phrase='two'
				when 3 
					phrase='three'
				when 4 
					phrase='four'
				when 5 
					phrase='five'
				when 6 
					phrase='six'
				when 7 
					phrase='seven'
				when 8 
					phrase='eight'
				when 9 
					phrase='nine'
			end
		elsif self.to_s.length == 2
			if self.to_s[0] == '1'
				case self
					when 10 
						phrase='ten'
					when 11 
						phrase='eleven'
					when 12 
						phrase='twelve'
					when 13 
						phrase='thirteen'
					when 14 
						phrase='fourteen'
					when 15 
						phrase='fifteen'
					when 16 
						phrase='sixteen'
					when 17 
						phrase='seventeen'
					when 18 
						phrase='eighteen'
					when 19 
						phrase='nineteen'
				end
			else
				case self.to_s[0].to_i
					when 2 
						phrase='twenty'
					when 3 
						phrase='thirty'
					when 4 
						phrase='forty'
					when 5 
						phrase='fifty'
					when 6 
						phrase='sixty'
					when 7 
						phrase='seventy'
					when 8 
						phrase='eighty'
					when 9 
						phrase='ninety'
				end
				if self.to_s[1].to_i != 0
					phrase << " " << self.to_s[1].to_i.in_words
				end
			end
		end
		phrase
	end

end

