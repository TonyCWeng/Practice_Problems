# given an m x n sized grid, formulate an algorithm that enables u to
# traverse from [0,0] to the bottom right, only going either right or
# down.

# utilize memoization to keep track of paths
# return all valid paths as output

# most likely solved with a buttom-up approach
# start at the bottom right and

def traverse_grid(rows, cols, dead_zones, paths)
  paths ||= Array.new(rows) {Array.new(cols)}

  #recursive step
  return traverse_grid(rows-1, cols) || traverse_grid(rows, cols-1)
end
