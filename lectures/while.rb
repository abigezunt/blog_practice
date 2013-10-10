# This is an infinite loop. Avoid these
# while true
# 	puts "Do this thing forever"
# end

# puts "Want some rye? Course you do."
# want_rye = gets.chomp
# while want_rye == "no"
# 	puts "Want some rye? Course you do."
# 	want_rye = gets.chomp
# end
# puts "Have another drink"

# number_of_times = 0
# while number_of_times < 10
# 	puts "Do it again"
# 	number_of_times += 1
# end

# 4.times do
# 	puts "Hi"
# end

want_to_play = "yes"
while want_to_play == "yes"
	puts "Game time"
	#Code for game goes here
	puts "You Win! Play again?"
	want_to_play = gets.chomp 
end

