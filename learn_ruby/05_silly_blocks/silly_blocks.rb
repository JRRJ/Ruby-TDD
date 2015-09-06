def reverser
	phrase = yield
	arr = phrase.split(" ")
	arr.map!{|w| w.reverse}
	arr.join(" ")
end

def adder n=1
	a = yield
	a += n
end

def repeater n=1
	n.times do
		yield
	end
end
