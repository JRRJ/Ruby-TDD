def measure n = 1
	before = []	
	after = []
	average_time = 0
	n.times do
		before[n] = Time.now
		yield
		after[n] = Time.now		
		average_time += (after[n]-before[n])
	end
	average_time / n
end
