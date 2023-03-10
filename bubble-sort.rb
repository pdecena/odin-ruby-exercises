#Function performing the bubble sort algorithm

def bubble_sort(integer_array)
	output = integer_array
	no_changes = 0
	integer_array.each_with_index do |number,index|
		if index < integer_array.length-1
			if number < integer_array[index+1]
				next
    		end
      		if number > integer_array[index+1]
				integer_array[index] = integer_array[index+1]
        		integer_array[index+1] = number
        		no_changes = 1
			end
		else
			integer_array[index] = number
      		output = integer_array
		end
	end
  	if no_changes == 1
    output = bubble_sort(output[0..output.length-1])
  	end
	return output
end

example = [4,3,78,2,0,2]

puts bubble_sort(example)