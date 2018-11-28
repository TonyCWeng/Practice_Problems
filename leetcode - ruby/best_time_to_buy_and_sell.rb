def max_profit(prices)
  return 0 if prices.length <= 1
  highest_profit = 0
  buy_price = prices.first
  prices.each do |current_price|
    potential_profit = current_price - buy_price
    # We want to record the highest potential profit possible, replacing
    # the old maximum as needed.
    if potential_profit > highest_profit
      highest_profit = potential_profit
    end
    # if we find a lower price, then we set the buy price to it.
    buy_price = current_price if current_price < buy_price
  end
  highest_profit
end
