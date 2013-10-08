# this is a possibility, but a bad one
# def factorial(x)
# 	begin
# 	x * factorial(x-1)
# 	rescue SystemStackError => err
# 		puts "#{err.class}: #{err.message}"
# 	rescue TypeError => err
# 		puts "#{err.class}: #{err.message}"
# 	end
# end

def factorial(x)
	x * factorial(x-1)
end

begin
	factorial(5)
rescue SystemStackError => err
	puts "#{err.class}: #{err.message}"
end