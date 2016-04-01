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
		return c
	end

	def check(copy)
		c = []

		values.each do |row|
	   		copy.each do |row_two|
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
	
	def transformation
		copy = self.copy_array


		values.each do |row|
			row.each do |column|
				if values[row][column] == 1
					copy[row][column-1] = 1
				end

			end
		end

	end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

image.transformation
image.output_image