

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
puts "Simple Appending\n"
puts [1,2,3,4,5]<<"woot"
puts [2,3,4,5,6].push('woot')

puts "Printing out an array"
A=[1,2,3,4,5]
puts "\n First 4 elements are: "
puts A[0..3]

puts "\n First 5 elements are: "
puts A[0..4]

puts "Joining elements of array\n"
puts [1,2,3,4,5].join
puts [1,2,3,4,5].join(',')

#creating arrays:
puts "\nCreating Arrays\n"
puts (0..9).to_a

#Transforming arrays

puts "\n Transforming Arrays \n"
Arr=[1,3,2,5,4]
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

#splitting string into arrays
puts "Splitting strings to arrays\n"
puts "foo bar  baz".split
puts "fooxbarxbazx".split('x')



#some more simple array examples
puts "\n Some simple array methods \n"
puts Arr
puts Arr.sort
puts Arr.reverse
puts Arr.shuffle

