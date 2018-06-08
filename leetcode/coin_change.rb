# You are given coins of different denominations and a target amount.
# Write a function to compute the minimum number of coins needed to make
# that amount. If that amount of money cannot be made up by any combination
# of coins, return -1. If this target amount is 0, return 0.

def coin_change(coins, target)
  # we return 0 when no change is needed.
  return 0 if target == 0
  # set the minimum value of each cached result to infinity, with the
  # exception of 0, which should be set to 0.
  cached_change = Array.new(target + 1, target * 1000)
  cached_change[0] = 0

  # By looping from 1, we can build up previous calculated minimums,
  # which we ultimately defer back to for larger values that require
  # more than one of a coin.
  (1..target).each do |change|
    coins.each do |coin|
      # skip if the coin's value is greater than the target amount
      next if coin > change
      # we are to pick the minimum between the current cached_change coin amount
      # or the current coin plus the pre-calculated best remainder minimum.
      cached_change[change] = [cached_change[change], 1 + cached_change[change - coin]].min
    end
  end
  cached_change[target] == target * 1000 ? - 1 : cached_change[target]
end

p coin_change([1, 2, 5], 11)
