# Given an array and index, find if it's possible to reach the value 0
# by starting at the given index and repeatedly moving left/right by the
# distance found at array[index].

# Use memoization

def can_win?(arr, start = 0, record = {})
  return false if !start.between(0, arr.count - 1) || seen[pos]
  return true if arr[pos].zero?

  seen[pos] = true
  can_win?(arr, pos + arr[pos], seen) || can_win?(arr, pos - arr[pos], seen)
end
# return false if we've already seen this position (i.e., arr[pos] = 0)
# or if we're beyond the bounds of the array.

# in the recursive step, we increment or decrement by arr[pos]
# we check both left and right
