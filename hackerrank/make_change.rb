# Given a target amount of change to return and an array of coins,
# return the lowest number of coins needed to make change
# if there is no satisfactory solution, return nil

# iterative make change

# use american coins if no array is provided
def make_change(amount, coins = [25, 10, 5 ,1])
  # start from the largest, work your way down
  coins = coins.sort.reverse
  best_change = nil
  (0...coins.count).each do |index|
    change = []
    total = 0

    coins[index..-1].each do |coin|
      # keep adding the largest coin possible until it exceeds the remainder
      until (coin + total) > amount
        change << coin
        total += coin
      end
    end

    if (best_change.nil? || change.count < best_change.count) &&
      total == amount
      # running record of the best change made. If our current change features
      # less coins, then it is our new best.
      best_change = change
    end
  end
  # if best_change is still nil, return nil. Else, return the number of coins
  best_change == nil ? best_change : best_change.count
end
