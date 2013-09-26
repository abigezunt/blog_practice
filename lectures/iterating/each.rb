my_friends = ["Chris", "Rich", "Sarah", "Maggie"]

my_friends[3] # Return "Maggie"
my_friends[-1]

# This will interate through all my friends, and `friend` will change each time to be a new string
my_friends.each do |friend|
	puts friend.upcase
end

# I can have multiple values that we're looping through
# The order matters, NOT the names
# Blocks can see outside, but other things can't see in them. 
# In Ruby, we have "Block Scope"
my_cat = "Jade"
my_friends.each_with_index do |my_shoe, wogglebug|
	puts "#{wogglebug}: #{my_shoe} who likes my cat #{my_cat}"
end

my_guitars = {mustang: "Fender", 
							telecaster: "Fender", 
							les_paul: "Gibson", 
							gr707: "Roland"}

#This and the following are the same
# If it is on a hash, .each outputs an key/value pair
my_guitars.each do |key, value|
end

my_guitars.each do |model, make|
	puts "#{make}: #{model}"
end


















