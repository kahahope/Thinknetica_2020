puts "Specify the value of the first side of the triangle in cm."
a = gets.to_f

puts "Specify the value of the second side of the triangle in cm."
b = gets.to_f

puts "Specify the value of the third side of the triangle in cm."
c = gets.to_f

a, b, c = [a, b, c].sort

right = a**2 + b**2 == c**2

isosceles = a == b

equilateral = a == b && b == c && a == c

if right && isosceles
  puts "The triangle is rectangular and isosceles."
elsif right
  puts "The triangle is rectangular."
elsif equilateral
  puts "The triangle is isosceles and equilateral, but not the rectangular."
else
  puts "The triangle is unknown."
end
