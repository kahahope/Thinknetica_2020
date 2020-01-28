puts "Hi, what's your name?"
name = gets.chomp

puts "What is your height?"
height = gets.to_i

ideal_weight = (height - 110) * 1.15

if ideal_weight >= 0
	puts "#{name}, your ideal_weight is #{ideal_weight} kg."
else
	puts "#{name}, your weight is ideal already!"
end
