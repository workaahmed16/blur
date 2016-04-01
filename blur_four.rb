class Image

	attr_accessor :values
	def initialize(values)
		@values = values
	end

	def output_image
		values.each do |row|
   		 	row.each do |column|
				print column
    		end
    		puts "\n"
		end
	end

	def copy_array
		c = []

		values.each do |row|
			c << row.dup
		end

		copy = Image.new(c)
	end

	def check_equal(copy)

	c = []

	values.each_with_index do |row, index|
   		
		if row.equal?(copy[index])    # Check same object
			c << true
		else
			c << false
		end
	end


	if c.include?(false)
		puts false
	else
		puts true
	end


	end

	def check_equivalent(copy)
		c = []

		values.each_with_index do |row, index|
			if row == (copy[index])
				c << true
			else
				c << false
			end
		end

		
		if c.include?(false)
			puts false
		else
			puts true
		end
	end

	
	def transformation
		
	end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

copy = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

#image.output_image
#image.copy_array
#image.check_equal(image.values)  # ==> true
#image.check_equivalent(image.values) # ==> true

#image.check_equal(copy.values)  # ==> false
#copy.values[0][0] = 1
#image.check_equivalent(copy.values) # ==> false