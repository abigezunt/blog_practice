# define with 'def'
# they need an 'end' at the end
# they have a name (square here)
# they can have zero or more parameters (here x)
def square(x)
	# return is optional, but preferred
	return x**2
end

def pi
	return 3.141597
end

def add(a, b)
	return a + b
end

puts add(46, 2)

# Do NOT define methods inside of methods. 
# def pi
# 	def berry
# 	end
# 	return 3.141597
# end

# But I can call methods inside of methods. Returns 16
puts square(square(2))

# This just outputs the string of pi
puts "pi"

# This outputs the value of the method 'pi'
puts pi

# The following will cause an error because of the wrong number of arguments
# puts pi(1)