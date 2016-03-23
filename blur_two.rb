	

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

		#Iterate through array and find "1"
		#way to access and change an element
		#values[1][1] = 500
		#values.each_with_index {|val, index| }
		a = values.flatten!
		b = a.map.with_index do |x, i| #map with index
		    if x.odd?
		    	a[i+1] = 1
		    	a[i-1] = 1
		      	p x
		      	break
		    else    
		      	p x
		    end
	  	end
		#turn number to the left into "1"
		#turn number to the right into "1"
	end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

image.transformation