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
		p new_array
	end

	def check_copy(new_copy)
		if values.equal?(new_copy)
			puts "They are the same"
		else
			puts "They are different objects"
		end
	end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
shallow_copy = image
image_copy = image.copy_array
image.check_copy(image_copy)
image.check_copy(shallow_copy)


# ==	Checks if the value of two operands are equal or not, if yes then condition becomes true.
# =	Simple assignment operator, Assigns values from right side operands to left side operand
#
#Everything in Ruby is an object. Every Object has a reference number or object_id

