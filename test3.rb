# Back to loops
puts "\n FOR LOOPS \n"

for i in Arr
	puts i
end

#Function to copy elements of array Arr into Brr if the number
# is a multiple of 2

def array_copy (source_arr)
	newarr=[]
	for i in source_arr # note how i is not the index here
		if (i%2==0)
			newarr<<i
		end
	end
	puts "\n Even array is"
	puts newarr
end

array_copy(Arr)

puts "\nLooping with each\n"

Brr=[22,23,24,25,26,27]
Brr.each do |i|
	puts i
end

def array_copy_each(source_arr)
	newarr=[]
	source_arr.each do |i|
		if (i%2==0)
			newarr<<i
		end
	end
	puts "\n New even array now is.."
	puts newarr

end


array_copy_each(Brr)