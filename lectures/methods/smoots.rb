# The function below doesn't know about 'smoots'

smoots = 1.7
puts "Line 4. Outside the function, calling smoots: #{smoots}"
# puts "Line 5. #{calc_smoots(10, smoots)}. Will error. Must define first"
# This will work, because I'm passing in the local variable
def calc_smoots(meters, smoot_ratio)
	smoot_ratio = 1.8
	# puts "Inside the function, calling smoots: #{smoots}. Will error"
	puts "Line 9. Inside the function, calling smoot_ratio: #{smoot_ratio}"
	smoots = 9001
	return meters / smoot_ratio
end

# puts "Outside the function, calling smoot_ratio: #{smoot_ratio}. Error"
puts "Line 14. Outside the function again. Calling smoots: #{smoots}"

calc_smoots(100, smoots)
puts "Line 18. What are smoots now: #{smoots}"