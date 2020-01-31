basket = {}
total_sum = 0

loop do
   puts "Indicate items."
   item - gets.chomp

   break if item == "stop"

   puts "Indicate the items price."
   price = gets.to_f

   puts "Indicate quantity of items."
   count = gets.to_f

   basket[item] = {total_price: price, total_count: count}
end

basket.each do |item, all_price|
  sum = all_price[:total_price] * all_price[:total_count]
  total_sum += sum
  puts "Basket containes items #{item} in quantity of #{all_price[:total_count]} at a price #{all_price[:total_price]}. The total purchase amount is #{sum}."
end

puts "The total purchase of the order is #{total_sum}."
