def check
	a = [[0,0],[0,0,1]]
	b = a.dup
	c = []

	a.each do |row|
   		b.each do |row_two|
			if row.equal?(row_two)
				c << true
			else
				c << false
			end
    	end
	end

	if c.include?(true)
		puts true
	else
		puts false
	end
end

def copy_array(values)
	c = []

	values.each do |row|
		c << row
	end
	puts "is this what you want ? #{c}"
end

check