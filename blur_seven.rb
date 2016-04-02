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
		values.each_with_index do |row, index_one| 
			row.each_with_index do |col, index_two|
				if row[index_two] == 1   
					
					if index_two >= 1
						copy.values[index_one][index_two-1] = 1		
					else
						copy.values[index_one][index_two] = 1
					end
					if index_two >= (row.length-1)
						
						copy.values[index_one][index_two] = 1		
					else
						copy.values[index_one][index_two+1] = 1
					end	
					if index_one >= (values.length-1) 
						copy.values[index_one][index_two] = 1
					else
						copy.values[index_one+1][index_two] = 1	
					end	
					if index_one >= 1
						copy.values[index_one-1][index_two] = 1		
					else
						copy.values[index_one][index_two] = 1
					end
					
				end
			end
		end
		return copy
	end

	def blur(distance)
		
		if distance == 1
			image = Image.new(self.transformation.values)
			image.output_image
		elsif distance == 2
			image = Image.new(self.transformation.values)
			image.transformation.output_image
		elsif distance == 3
			image = Image.new(self.transformation.values)
			image.transformation.transformation.output_image
		else
			puts "Invalid Input"
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
image.blur(3)




