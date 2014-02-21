print "Hello World \n"


#simple arithmetic
print "Simple Arithmetic\n"
puts 2+4
print "\n"

#string manipulation
print "String Manipuation \n"
# splits the string into two parts;path is the splitter
puts "Fear is the path to the dark side".split('path')

#all variations of string concatenation
print "String Concatenation \n"
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

 puts 'RubyMonk'.gsub(/[uyk]/,'G')
 #another example

 puts "RubyMonk is pretty brilliant".gsub(/[A-Z]/,'0')