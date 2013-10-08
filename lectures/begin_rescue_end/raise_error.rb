class Person
	def age
		@age
	end

	def age=(age)
		raise AgeError, "Age #{age} is too young" if age < 0
		raise AgeError, "You are not a Hobbit" if age > 111
		@age = age
	end
end

class AgeError < RuntimeError
end

me = Person.new

puts "What is your age?"
my_age = gets.chomp.to_i

begin
	me.age=my_age
rescue AgeError => err
	puts err.message
end
puts me.age