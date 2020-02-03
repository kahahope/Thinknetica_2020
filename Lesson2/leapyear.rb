puts "Indicate the day."
day = gets.to_i

puts "Indicate the month in numbers."
month = gets.to_i

puts "Indicate the year."
year = gets.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

leapyear = year % 4 == 0 && year % 100 !=0 || year % 400 == 0

months[1] = 29 if leapyear

sum = months.take(month - 1).sum
sum += day

puts "Date serial number counting from the begining of the year is #{sum} day."
