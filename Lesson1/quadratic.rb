puts "Specify value a."
a = gets.to_f

puts "Specify value b."
b = gets.to_f

puts "Specify value c."
c = gets.to_f

d = b**2 - (4 * a * c)

if d == 0
	x = -b / (2 * a)
	puts "The equation has one root which is equal #{x}."
elsif d > 0
	root = Math.sqrt(d)
	x1 = (-b + root) / (2 * a)
	x2 = (-b - root) / (2 * a)
	puts "The equation has two roots which are equal #{x1} and #{x2} respectively."
else
	puts "There are no roots."
end
