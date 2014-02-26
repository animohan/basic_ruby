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
##############################################################

##SYMBOLS DHH########
# Symbols look kind of like string, but prefixed with a colon
# instead of surrounded by quotes e.g :name
puts "name".split('')
#puts :name.split('') will give an error
puts "foobar".reverse
#puts :foobar.reverse will give an error

#Symbols as hash keys
user ={
:name=>"Michael",
:email=>"michael@gmail.com"
}
puts user[:name]
puts user[:email]
puts user [:password]

#Since its common to user symbols as keys, ruby suports new syntsx
h1={:name=>"Michael", :email=>"michael@gmail.com"}
h2={name: "Michael", email: "michael@gmail.com"}
puts h1==h2 #Returns value true even though syntax is different
# :name=> == name: only inside the literal hashes


#Nested Hashes
puts "Nested Hashes"
params={}
params[:user]={name:"Michael", email:"michael@gmail.com"}
puts params
puts params[:user][:email]

#note that while 'each' method of array take a block with one variable
# 'each' method for hases takes two, a key and a value
puts "\n Using 'each' for hashes \n"
flash ={success:  "It worked", error: "It failed"}
flash.each do |key, value|
	puts "Key #{key.inspect} has value #{value.inspect}"
end

#'inspect' method returns a string with a literal representation 
# of the object its called one

puts (1..5).to_a #put an array as a string
newarr=(1..5).to_a.inspect #put a literal array
puts newarr
puts newarr[0]
puts newarr[1]
puts newarr[2]
#see how the array is literally represented newarr[0]==[, newarr[2]=,

#the shortcut for inspect is p function p :name== puts :name.inspect
p :name 
