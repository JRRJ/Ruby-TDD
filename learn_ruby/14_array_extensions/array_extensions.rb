class Array
	def sum
		if self.length == 0
			0
		else
			self.inject{|sum,n| sum+=n}
		end
	end

	def square
		self.map{|x| x**2}
	end

	def square!
		self.map!{|x| x**2}
	end
end
