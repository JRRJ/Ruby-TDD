class Dictionary
	def initialize
		@entries = {}
	end

	def entries
		@entries
	end

	def add entry
		if entry.is_a?(Hash)
			@entries.merge!(entry)
		elsif entry.is_a?(String)
			@entries.merge!({entry => nil})			
		end
	end

	def keywords
		@entries = Hash[@entries.sort { |a,b| a[0]<=>b[0]}]
		@entries.keys
	end

	def include? key
		@entries.has_key? key
	end

	def find key_exp
		@entries.select {|key, value| key.to_s.match(key_exp)}
	end

	def printable
		keywords
		output = ""
		@entries.each_pair {|key, value| output << "\[#{key}\] \"#{value}\"" + "\n"}
		output.chomp
	end
end
