def add a, b
	a + b
end

def subtract a, b
	a - b
end

def sum a
	total = 0
	a.each {|x| total += x}
	total
end

def multiply a, b
	a * b
end

def power a,b
	a**b
end

def factorial a
	total = 1
	x = 1	
	while x <= a
		total *= x
		x += 1
	end
	total
end
