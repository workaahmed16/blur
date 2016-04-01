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
		copy = self.copy_array 
		values.each_with_index do |row, index_one|   #Iterate through first array with index
			row.each_with_index do |col, index_two|  #iterate through each sub array with index
				if row[index_two] == 1   #find out which index of the sub-array contains 1. 
					#copy = self.copy_array   #Get a copy for editing purposes. 
					copy.values[index_one][index_two-1] = 1		#Edit copy array with the correct index locations
					copy.values[index_one][index_two+1] = 1		#Edit copy array with the correct index locations
					copy.values[index_one+1][index_two] = 1		#Edit copy array with the correct index locations
					copy.values[index_one-1][index_two] = 1		#Edit copy array with the correct index locations
					#copy.output_image  #finally output everything.
				end
			end
		end
		copy.output_image
	end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 1, 0, 0],
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


image.transformation