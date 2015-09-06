class RPNCalculator
	def initialize
		@rpn_array = []
	end

	def push x
		@rpn_array.push(x)
	end

	def plus
		if !error_check
			@rpn_array.push(@rpn_array.pop + @rpn_array.pop)
		end
	end

	def minus
		if !error_check
			temp = @rpn_array.pop
			@rpn_array.push(@rpn_array.pop - temp)
		end
	end
	
	def times
		if !error_check
			@rpn_array.push(@rpn_array.pop * @rpn_array.pop)
		end
	end

	def divide
		if !error_check
			temp = @rpn_array.pop
			@rpn_array.push(@rpn_array.pop.to_f / temp.to_f)
		end
	end

	def error_check
		if @rpn_array.length < 1
			raise "calculator is empty"
		elsif @rpn_array.length == 1
			raise "only one value in stack"			
		else
			false
		end
	end

	def value
		@rpn_array[-1]
	end

	def tokens str_in
		str_in.split.map  {|n| 
			if n.match('\d+') == nil
				n.to_sym
			else
				n.to_i
			end
		}
	end

	def evaluate str_in
		instructions = tokens str_in
		for n in 0..instructions.length-1
			#puts
			if (instructions[n].is_a?(Fixnum) || instructions[n].is_a?(Float))
				@rpn_array.push(instructions[n])
			elsif instructions[n] == :+
				plus
			elsif instructions[n] == :-
				minus
			elsif instructions[n] == :*
				times
			elsif instructions[n] == :/
				divide
			end
		end
		@rpn_array[-1]
	end

	def sub_eval
		eval_now = @rpn_array.pop
		puts eval_now

	end
end
