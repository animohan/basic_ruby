
###########################################################

#### CLASSESS#
puts "\n checking classes of some inbuit types"
puts 1.class
puts " ".class
puts [].class

puts 1.is_a?(Integer) # Integer here is case sensistive i.e not Integer
puts 1.is_a?(String)

puts "\n Class of a Class \n"
puts 1.class.class

puts "\n Building new class"
class Rectangle
	def initialize(length, breadth)
		@length=length
		@breadth= breadth
	end
	def perimeter
		2*(@length+@breadth) #@ symbol implies variables are part of the state of the class
	end

	def area
		(@length*@breadth)
	end
end

#methods
puts "\n Some simple expanation for methods \n"
puts 1.next
puts 1.method('next') #works in rubymonk not here

def reverse_sign(an_integer)
	return 0-an_integer
end

puts reverse_sign(-200)
puts reverse_sign(34)
puts reverse_sign(2).class #objects have a class

def do_nothing
	end

puts do_nothing.class

#note that no code is called after return
def early_return
	puts "\ntouched code"
	return
	puts "Never touched code"
end

puts early_return


def add2(a_number)
	return a_number.next.next
end

puts add2(-2)
puts add2(-5)
puts add2(10)
puts add2(0)

#Some more complicated methods
puts "\nMore complicated methods\n"

def add(a_number, b_number)
	a_number+b_number #last statement is an implicit return
end

puts "\Adding 2 numbers\n"
puts add(1,2)

def addmore(a_number, b_number, c_number, d_number=0)
	a_number+b_number+c_number+d_number
end

puts "Adding more numbers"
#puts addmore(1,2) # setting 2 arguments doesnt work.
# as the function requires atleast 3 argument. 4th argument has a default value
# so 4th argument is optional
puts addmore(1,2,3)
puts addmore(1,2,3,4)

#Arraying the arguments of a function
puts "\n Arrays as input arguments for a function\n"


#SPLATS ARE BIT DFFERENT, WORTH 2nd LOOK
#splat operator is used to handle methods that have a variable parameter list
def addnum(*number)
	number.inject(0){|sum,number| sum+number}
end

puts addnum(1)
puts addnum(1,2)
puts addnum(1,2,3)
puts addnum(1,2,3,4,5,6,7,8,9,10)

#splat operator works both ways i.e convert arrays to parameter list
#and convert parameter list to array

def addnum2(anum,bnum,cnum)
	anum+bnum+cnum
end 

numbers_to_add=[1,2,3] 
puts addnum2(*numbers_to_add) # note array length of numbers_to_add has to match 
#number of arguments required by the function


#if parameters to method are known, can mix parameter list and splatting

def addnew(*number)
	number.inject(0){|sum,number| sum+number}
end

def addmsg(message, *number)
	"#{message}: #{addnew(*number)}"
end

puts addmsg("The sum is", 1,2,3)

def introduction(age, gender, *names)
"Meet #{names.join(' ')}, who's age #{age} and gender #{gender}"
end

puts introduction(22,'male', 'henry', 'james')
puts "\n"


# THIS IS A GOOD EXAMPLE TO UNDERSTAND


def addition(anum, bnum, options ={})
	sum=anum+bnum
	sum=sum.abs if options[:absolute]
	sum= sum.round(options[:precision]) if options[:round]
	sum
end

puts addition(1.0134, -5.568)
puts addition(1.0134, -5.568, absolute: true)
puts addition(1.0134, -5.568, absolute: true, round: true, precision: 3)


############NEEDS REVISITING###################################
def add(*numbers)
	numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  sum = numbers.shift
  numbers.inject(sum) { |sum, number| sum - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
#################################################################

########## From DHH

class Word
	def palindrome?(string)
		string==string.reverse
	end
end

w=Word.new
puts w.palindrome?("foobar")
puts w.palindrome?("level")

#Another way is to let  class Word inherit from string class

class Word2 < String
	def palindrome?
		self==self.reverse
	end
end

w2=Word2.new("level")
puts w2.palindrome?


class User
	attr_accessor :name, :email

	def initialize(attributes={})
		@name= attributes[:name]
		@email=attributes[:email]
	end

	def formatted_email
		"#{@name}<#{email}>"
	end

end

example=User.new
puts example.name
puts "\n"

example.name="example user"
example.email="user@example.com"
puts example.formatted_email