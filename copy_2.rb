def copy_array(values)
	c = []

	values.each do |row|
		c << row
	end
	puts "is this what you want ? #{c}"
end

	copy_array([[0,0]])