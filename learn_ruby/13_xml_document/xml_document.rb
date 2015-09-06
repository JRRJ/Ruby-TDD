class XmlDocument
	def initialize (indents=false)
		@indents = indents
		@level = 0
	end

	def method_missing(methodId, opts= {})
		#check for indents, increase nesting level if we want indents
		if @indents
			@level += 1
		end
		
		xml = ""	# builder variable
		
		attributes = ""		
		if opts != nil
			attributes << " "
			opts.each {|key, value | attributes << "#{key}=\'#{value}\' "}
			attributes.chop!
		end	
		if block_given?
			xml << "<" + methodId.to_s + attributes +">"
			xml << "\n" << "  "*(@level) if @indents
			xml << yield
			xml << "\n" << "  "*(@level-1) if @indents
			xml << "</" + methodId.to_s + ">"
		else
			xml << "<" + methodId.to_s + attributes +"/>"
		end
		@level-=1
		xml << "\n" if @level==0
		xml
	end
end
