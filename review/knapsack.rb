# Given two lists of the same size, one being an item's weight and the
# other being its respective value, return the maximum value for a target
# weight that fits in your knapsack.
# There is only one of each item.

def maximize_weight(weights, values, weight_limit)
  # default each value to 0, that is, not selected
  # filler row and column to signify value of 0 and weight of 0
  # As we have essentially unshift'd a 0 in fron of both weights and values,
  # we will have to refer to the current item as i-1 in regards to the cache
  cache = Array.new(weights.length + 1) { Array.new(weight_limit + 1) }
  (0..values.length).each do |i|
    (0..weight_limit).each do |j|
      if i == 0 || j == 0
        cache[i][j] = 0
        next
      end
      # If the current weight limit, j, is greater than or equal to the
      # weight of the current item, then we pick between the greater of
      # the max value of our current item plus the max value of the remaining
      # weight or the previous max value calculated without using the current item.
      if j - weights[i - 1] >= 0
        cache[i][j] = [cache[i - 1][j], values[i - 1] + cache[i - 1][j - weights[i - 1]]].max
      else
        cache[i][j] = cache[i - 1][j]
      end
    end
  end
  p cache
  cache[weights.length][weight_limit]
end
p maximize_weight([1, 3, 4, 5], [1, 4, 5, 7], 7)
