class Temperature
	def initialize (opts = {})
		@f = opts[:f]
		@c = opts[:c]
	end

	def self.from_celsius temp
		new({:c => temp})
	end

	def self.from_fahrenheit temp
		new({:f => temp})
	end
	
	def ftoc(f_temp)
		(5.0/9.0) * (f_temp - 32)
	end

	def ctof(c_temp)
		(9.0/5.0) * c_temp + 32
	end

	def in_fahrenheit
		if @f != nil
			@f
		else
			@f = ctof(@c)
		end
	end

	def in_celsius
		if @c != nil
			@c
		else
			@c = ftoc(@f)
		end
	end


	
end

class Celsius < Temperature
	def initialize (c)
		@c = c
	end
end

class Fahrenheit < Temperature
	def initialize (f)
		@f = f
	end
end
