def make_change(target, coins = [25, 10, 5, 1])
  # base cases, edge cases
  return [] if target == 0
  # if change is smaller than what we have on us, can't make change
  return nil if coins.min > target

  # go through coins from largest to smallest
  coins = coins.sort.reverse

  best_change = nil
  coins.each_with_index do |coin, index|
    next if coin > target

  end
  return best_change if best_change.nil?
  best_change.count
end
