def stock_picker(prices)
  min_price = prices[0]
  min_i = 0
  profit = 0
  days = [0, 0]

  prices.each_with_index do |price, i|
    if price < min_price
      min_price = price
      min_i = i
    elsif price - min_price > profit
      profit = price - min_price
      days = [min_i, i]
    end
  end

  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12