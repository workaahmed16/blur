	

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
	def transformation
		p values
		values.each_index do |row|
			subarray = values[row]
    		subarray.each_index do |column|
    			if values[row][column].odd?

    				new_array = []
    				new_array.push(values)



    				values[row][column+1] = 1
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