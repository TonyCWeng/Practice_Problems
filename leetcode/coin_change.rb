# You are given coins of different denominations and a total amount of money (target).
# Write a function to compute the minimum number of coins needed to make
# that amount. If that amount of money cannot be made up by any combination
# of coins, return -1. If this target amount is 0, return 0.

def coin_change(coins, target)
  return 0 if target == 0
  cached_change = Array.new(target + 1, target)
  cached_change[0] = 0
  (1..target).each do |change|
    coins.each do |coin|
      next if coin > change
      cached_change[change] = [cached_change[change], 1 + cached_change[change - coin]].min
    end
  end
  cached_change
end

p coin_change([1, 2, 5], 11)
