def calculate_area_of_circle(radius)
	pi = 3.14
	return pi * radius ** 2
end
# The following gives an error, as pi was defined in the method
#puts pi
puts calculate_area_of_circle(10)

# This is an example of a 'local variable'
# But a local variable is only available in its own 'scope'

# Constants however are of global scope, but never change
SMOOTS = 1.7

FOUNDING_DATE_OF_US = "July 4, 1776"

# Not talking about today, but exist
# Class scope @@foo
# Instance scope @foo

def calculate_length_to_smoots(meters)
	return meters / SMOOTS
end

puts calculate_length_to_smoots(10)



