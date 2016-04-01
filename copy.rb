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

	def check_equal(copy)

	c = []

	values.each_with_index do |row, index|
   		
		if row.equal?(copy[index])    # Check same object
			c << true
		else
			c << false
		end
	end

	p c 

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


image.check_equal(copy.values)   # ==> false
image.check_equivalent(copy.values)  # ==> true
#image.check(image.values)  # ==> true
#image.check(image.values.dup)  # ==> true

image.output_image
copy.values[0][0] = 1
copy.output_image
image.check_equal(copy.values)  # ==> false
image.check_equivalent(copy.values) # ==> false




# ==	Checks if the value of two operands are equal or not, if yes then condition becomes true.
# =	Simple assignment operator, Assigns values from right side operands to left side operand
#
#Everything in Ruby is an object. Every Object has a reference number or object_id

