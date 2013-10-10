# Initialize an empty hash
my_pets = {}
my_pets = Hash.new

# Or you can define a populated hash. 
my_motorcycles = {f800st: "BMW", 
				  cl125s: "Honda", 
				  cm400t: "Honda"}

# To access an item in a hash, you need to call its "key"
my_motorcycles[:f800st] # return BMW

# Sometimes I need to take user input or a string, and search for that as a key, but the key is a symbol:
user_input = "f800st"
my_motorcycles[user_input.to_sym] # Output BMW

# This will redefine the value of the item with a key of cl125s to be "Triumph"
my_motorcycles[:cl125s] = "Triumph"

# To define a new one, do the same syntax
my_motorcycles[:r1200gs] = "BMW"

# If you need to delete a key/value pair from a Hash do this
my_motorcycles.delete(:r1200gs)

# Some hashes use strings for keys, and that's fine too
my_guitars = {"Telecaster" => "Fender", "Stratocaster" => "Fender"}

# To access a string-key'd hash do this:
my_guitars["Telecaster"]

my_guitars.each do |model, make|
	puts "#{model}, #{make}"
end










