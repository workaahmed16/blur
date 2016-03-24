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
		new_array = Marshal.load(Marshal.dump(values))
		if values.equal?(new_array) 
			puts "The objects are the same"
		else
			puts "This is a different object"
		end
	end

	def check
	end

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
image.copy_array
image.values.


# ==	Checks if the value of two operands are equal or not, if yes then condition becomes true.
# =	Simple assignment operator, Assigns values from right side operands to left side operand
#
#Everything in Ruby is an object. Every Object has a reference number or object_id

