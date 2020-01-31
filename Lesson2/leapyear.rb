puts "Indicate the day."
day = gets.to_i

puts "Indicate the month in numbers."
month = gets.to_i

puts "Indicate the year."
year = gets.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

leapyear = year % 4 == 0 && year % 100 !=0 || year % 400 == 0

months[1] = 29 if leapyear

day_number = 0
for n in (0..(month -2))
  day_number += months[n]
end

puts "Date serial number counting from the beginning of the year is #{day_number + day} day."
