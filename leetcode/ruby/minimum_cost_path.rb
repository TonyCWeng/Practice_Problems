# Start backwards from the goal,

def min_path_sum(grid)
  rows = grid.length
  cols = grid[0].length
  min_costs = Array.new(rows) { Array.new(cols) }
  i, sum = 0, 0

  while i < rows
    min_costs[i][0] = grid[i][0] + sum
    sum = min_costs[i][0]
    i += 1
  end
  i, sum = 0, 0
  while i < cols
    min_costs[0][i] = grid[0][i] + sum
    sum = min_costs[0][i]
    i += 1
  end

  i = 1
  while i < rows
    j = 1
    while j < cols
      min_costs[i][j] = grid[i][j] + [min_costs[i - 1][j], min_costs[i][j - 1]].min
      j += 1
    end
    i += 1
  end
  min_costs[rows - 1][cols - 1]
end

p min_path_sum([[1, 4, 9, 17], [5, 6, 7, 12], [9, 9, 9, 12]])

# We begin by populating the first row and column of the min_cost array,
# as they are simply the sum of the values leading up and including the
# the cost associated with the very grid.
# As such, we can then iterate through the rows and columns starting with
# the second row and fill up their values based on the lesser of their two
# neighboring values and their own associated cost.

# As we need to visit every value in the array, the time complexity is
# O(n ** 2). The space complexity is also O(n ** 2), as we've mapped
# out the minimum cost of value of the array.
