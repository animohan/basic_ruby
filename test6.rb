#Blocks: RubyMonk

#Blocks: Chap 4 DHH

#Example of block:
(1..5).each {|i| puts 2*i}
# This code calls the each method on the range (1..5) and passes
# a block {|i| puts 2*i}. The vertical bars around i are syntax
# for block and its upto the method to know what to do with a block
# In this case the range's each method can handle a block with single 
# local variable that we have called i and it executes the block 
# for ach value in the range.

#another way
(1..5).each do |i|
	puts 2*i
		
end


3.times {puts "Betelgeuse"} #3.times take a block with no variable

(1..5).map {|i| puts i**2}
%w[a b c].map {|char| puts char.upcase}
["a","b","c"].map {|char| puts char.upcase}

#Understand this:
('a'..'z').to_a.shuffle[0..7].join
#('a'..'z').to_a creates an array of alphabet
# shuffle shuffles the array to create a random ordering of alphabets
#[0..7] gives first 8 elements of the array
# join joins them to get a random string.