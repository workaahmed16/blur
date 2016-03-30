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

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

copy = image.copy_array
copy[0][0] = 1
p copy

image.output_image

image.check(copy)




# ==	Checks if the value of two operands are equal or not, if yes then condition becomes true.
# =	Simple assignment operator, Assigns values from right side operands to left side operand
#
#Everything in Ruby is an object. Every Object has a reference number or object_id

