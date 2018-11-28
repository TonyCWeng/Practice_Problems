# Design an algorithm to find the maximum profit. You may complete as
# many transactions as you may like, but you must sell before you buy again.
# This problem has very poor instructions attached to it.
# We are able to hold onto one stock at a time. We are able to sell and purchase
# on the same day. As such, all we need to do is sell whenever the price
# increases between two days.

def max_profit(prices)
  i = 0
  profit = 0
  while i < prices.length - 1
    if prices[i + 1] > prices[i]
      profit += prices[i + 1] - prices[i]
    end
    i += 1
  end
  profit
end

def max_profit2(prices)
  profit = 0
  previous_price = prices.first
  prices.each do |current_price|
    if current_price > previous
      profit += current_price - previous
    end
    previous_price = current_price
  end
  profit
end

p max_profit([7,1,5,3,6,4]) == 7
p max_profit([1,2,3,4,5]) == 4
p max_profit([7,6,4,3,1]) == 0
