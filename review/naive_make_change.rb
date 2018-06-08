# Given an array of coins and a target amount of change,
# return the smallest number of coins needed to make this set of change.

def make_change(coins, target_change)
  sorted_in_descending = coins.sort { |a, b| b <=> a }
  change = []
  i = 0
  while i < coins.length
    current_coin = sorted_in_descending[i]
    p current_coin
    if target_change >= current_coin
      target_change -= current_coin
      change << current_coin
    else
      i += 1
    end
  end
  change.length
end

p make_change([1, 5, 10, 25], 30)
