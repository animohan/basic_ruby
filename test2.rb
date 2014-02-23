#Introducing Hashes
puts "Introducing Hashes"
student_ages ={
"Jack"=>10,
"Jill"=>12,
"Bob"=>14

}

#The names Jack, Jill and Bob are the keys and ages 10,12, 14 are the values

menu={
	"Dal"=>20,
	"ramen"=>5,
	"burger"=>10
}

puts "Ramen's price is"
puts menu["ramen"]

menu["ramen"]=9
puts "Ramen price has gone up. New price is"
puts menu["ramen"]

#Another way to declare Hashes
lunchmenu={}

lunchmenu["Tea"]=5
lunchmenu["coffee"]=10
lunchmenu["drinks"]=15

puts "Iterating over hashes"
menu.each do |item, price|
	puts "#{item}: $#{price}"
end
puts "\n Prices in rupees"
menu.each do |item, price|
	puts "#{item}: Rs #{price*50}"
end


puts "\n Prices are increasing now \n"

menu.each do |item,price|
	menu[item]=price+price*0.1
end

puts menu
menu.each do |item, price|
	puts "#{item}: $ #{price}"
end

puts "\n Extracting the keys and values from a Hash \n"
# Every hash object has two methods keys and values.
#Keys method returs an array of all keys in hash
#values method returns an array of all  values in hash
puts "Menu entries\n"
puts menu.keys

puts "Menu values\n"
puts menu.values

#######################################################
#########NEEDS A BIT MORE TIME UNDERSTANDING##########
puts "\nSome other quick ways to generate hashes\n"
fruits = Hash.new
sweet=fruits[:apple]
p sweet #p sweet works but, puts sweet does not ! might be a hashes thing
puts fruits

veggies =Hash.new("bitter")
gooseberry=veggies[:sour]
p gooseberry

puts "Hello World"
puts veggies.values
puts veggies.keys
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
	number.inject?(0){|sum,number| sum+number}
end

def addmsg(message, *number)
	"#{message}: #{addnew(*number)}"
end

puts addmsg("The sum is", 1,2,3)

