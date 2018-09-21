# Given a number of steps, return how many ways one can climb it. Assume
# that you may only walk one or two steps at a time.

# This won't pass on leetcode without memoization.
def recursive_climb_steps(steps)
  return 0 if steps <= 0
  return 1 if steps == 1
  return 2 if steps == 2

  recursive_climb_steps(steps - 2) + recursive_climb_steps(steps - 1)
end
# Time Complexity: O(2**n), Space Complexity: O(n) as the stack size
# can reach up to n.

# Adding memoization
def climb_stairs(steps)
  required_steps = [0, 1, 2]
  def memoized_climb_stairs(steps, required_steps)
    return required_steps[steps] if required_steps[steps]
    required_steps[steps] = memoized_climb_stairs(steps - 2, required_steps) +
      memoized_climb_stairs(steps - 1, required_steps)
  end
  memoized_climb_stairs(steps, required_steps)
end

# Time complexity: O(n). Space Complexity of O(n) (stack and memoization arr)

p climb_stairs(4)
