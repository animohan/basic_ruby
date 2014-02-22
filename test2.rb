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