# iterative make change

# use american coins if no array is provided
def make_change(amount, coins = [25, 10, 5 ,1])
  # start from the largest, work your way down
  coins = coins.sort.reverse
  best_change = nil
  (0...coins.count).each do |index|
    change = []
    total = 0

    coins.drop(index).each do |coin|
      until (coin + total) > amount
        change << coin
        total += coin
      end
    end

    if (best_change.nil? || change.count < best_change.count)
      best_change = change
    end
  end
  best_change == amount ? best_change : best_change.count
end
