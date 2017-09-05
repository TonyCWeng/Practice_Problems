# Given an array and index, find if it's possible to reach the value 0
# by starting at the given index and repeatedly moving left/right by the
# distance found at array[index].

# Use memoization

def can_win?(arr, start = 0, visited = {})
  return false if !start.between(0, arr.count - 1) || visited[pos]
  return true if arr[pos].zero?

  visited[pos] = true
  can_win?(arr, pos + arr[pos], visited) || can_win?(arr, pos - arr[pos], visited)
end
# return false if we've already visited this position (i.e., arr[pos] = 0)
# or if we're beyond the bounds of the array.
# visited is our collection of pos: true key value pairs.
# we pass in the updated hash to the recursive call.

# in the recursive step, we increment or decrement by arr[pos]
# we check both left and right
