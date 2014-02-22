print "Hello World \n"


#simple arithmetic
print "Simple Arithmetic\n"
puts 2+4
print "\n"
 
#String length
print "Lenth of 'RubyMonk is #{'rubymonk'.length} \n "
# we can place any valid ruby code inside #{} and it will
# evaluated and inserted at the location
# Another way is to do this: print "RubyMonk".length

print "Searching in a string \n"
"This is a wonderful world".include? 'World'
# Note: RubyMonk: Shows ruby supports starts_with and 
# ends_with? ; but cannot run it.
#"Ruby is a beautiful language".starts_with?'Ruby'
#"Ruby is a beautiful language".ends_with?'language'
print "\n"

print "Working with Index \n"
print "I am a Rubyist".index('R')

print "\n Changing case\n"
print "I was in down case \n".upcase
print "I WAS IN UPPER CASE \n".downcase
print "I was in sentence case and now swapped\n".swapcase

#string manipulation
print "\nString Manipuation \n"
# splits the string into two parts;path is the splitter
puts "Fear is the path to the dark side\n".split('path')


#all variations of string concatenation
print "\nString Concatenation \n"
puts 'Ruby'+'Monk'
#+ appends the string and the original string is not modified.
puts 'Ruby'<<'Monk'
# << appends the string to the original string.

#Replacing a substring
print "Replacing a substring \n"
puts "I should look into your problem when I get time".sub('I','We')
 # sub replaces the first occurence

 puts "\nI should look into your problem when I get time".gsub('I','They')
 #gsub replaces all the occurences

 #More Replacing
 puts 'RubyMonk'.gsub(/[aeiou]/,'1')
 # Replaces the set of alphabets with 1
 puts "\n"

 puts 'RubyMonk'.gsub(/[uyk]/,'G')
 #another example

 puts "\nRubyMonk is pretty brilliant\n".gsub(/[A-Z]/,'0')

# Using regular expressions
puts "Using regular Expressions \n"
puts "RubyMonk is Pretty Brilliant".match(/ ./)
# matchiing the character and first character after space

puts "RubyMonk is pretty Brilliant \n".match(/r./)
puts 'RubyMonk is pretty Brilliant \n'.match(/r./,15)
#starts matching character starting with the 15th character.


puts "Functions and If statements"

def check_sign(number)
	if number==0
		puts "#{number} is zero\n"
	elsif number>0
	puts "#{number} is positive \n"
	else
	puts "#{number} is negative \n"
	end
end

check_sign(0)
check_sign(-1)
check_sign(1)

def check_age(age)
	unless age>=18
		puts "Need to be 18 to drink"
	end
end

check_age(21)
check_age(15)

print "Simplified if loops\n "
def check_sign2(number)
  number > 0 ? "#{number} is positive" : "#{number} is negative"
end

check_sign2(0)
check_sign2(1)
check_sign2(-1)

#loops
2.times do
	puts "Say Hello"
end

#Arrays
A=[1,2,3,4,5]
#numbers characters and string can be mixed in arrays
B=['a',1,'cer','did']
puts "Array B=[a,1,cer,did]"
puts "B[0],B[1],B[2] are.."
puts B[0]
puts B[1]
puts B[2]

#Array indexes can be negative
puts "B[-2],B[-1] are.."

puts B[-2]
puts B[-1]

#Adding elements to arrays
[1,2,3,4,5]<<"woot"
[2,3,4,5,6].push('woot')


#Transforming arrays
puts "\n Transforming Arrays \n"
Arr=[1,2,3,4,5]
 puts A.map {|i| i+1}
 puts A.map{|i| i*2}
#note that map does not change the original content of the arrays

#Filtering and Array
puts "\n Filtering and Array\n"

Arr=[2,3,4,5,6,7,8]
puts "\n printing out even numbers \n"
puts Arr.select{|number|number%2==0}

puts "\n printing out odd number \n"
puts Arr.select{|number|number%2!=0}

game=['rock','paper','scissor','lizard','spock']
puts game.select {|word| word.length>5}


puts "Deleting elements"
game.delete_if{|word| word.length<5}
puts game


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