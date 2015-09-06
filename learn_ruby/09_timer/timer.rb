class Timer
	def initialize
		@seconds = 0
	end

	def seconds= (new_seconds)
		@seconds = new_seconds
	end

	def seconds
		@seconds
	end

	def time_string
		time_output = ""
		time_left = @seconds
		if @seconds / 3600 >= 1
			time_output += padded(@seconds / 3600)
			time_left = @seconds % 3600
		else
			time_output += "00"
		end
		time_output += ":"
		if time_left / 60 >= 1
			time_output += padded(time_left / 60)
			time_left = time_left % 60
		else
			time_output += "00"
		end
		time_output += ":" + padded(time_left)
	end

	def padded input
		if input.to_s.length == 1
			"0" + input.to_s
		else
			input.to_s
		end
	end
end
