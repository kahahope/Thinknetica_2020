numbers_fibonachi = [0, 1]

while (new_number = numbers_fibonachi[-2] + numbers_fibonachi[-1]) < 100
  numbers_fibonachi << new_number
end

puts numbers_fibonachi
