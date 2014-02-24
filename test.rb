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
