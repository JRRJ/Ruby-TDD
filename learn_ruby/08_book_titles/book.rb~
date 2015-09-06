class Book
	def title=(new_title)
		@title = titleize(new_title)
	end
	def title
		@title
	end
end

def titleize says
	arr = says.split(" ")
	arr.each{|x| unless(x == 'a' || x == 'an' || x == 'the' || x == 'or' || x == 'for' || x == 'on' || x == 'at' || x == 'to' || x == 'from' || x == 'by' || x == 'of' || x == 'in' || x == 'and' || x == 'over') then x.capitalize! end}
	arr[0].capitalize!;	
	arr.join(" ")
end
