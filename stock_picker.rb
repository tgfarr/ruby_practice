def stock_picker(stock_array)

  x = 0
  max_profit = 0
  profit = 0
  days = ""

  stock_array.each_with_index do |i, index|
    p = index
    stock_array.each_with_index do |j, index|
      if x < p
	profit = i - j
	if profit > max_profit
	  max_profit = profit
	  days = j.to_s + ", " + i.to_s
	end
	x += 1
      end
    end
    x = 0
end

puts max_profit
puts days
end

stock_picker([9,4,7,0,1,0,6])


