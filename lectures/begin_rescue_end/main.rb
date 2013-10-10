puts "What is your first number"
first = gets.chomp.to_i
puts "What is your second number?"
second = gets.chomp.to_i

begin
	# Inside the begin goes the code that *might* pose a problem
	result = first / second 


rescue ZeroDivisionError => error_message
	# Inside the rescue goes the code that we want 
	# to run if a specific error occurs
	puts error_message

end

puts result