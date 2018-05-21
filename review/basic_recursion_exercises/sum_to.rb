# Write a function that uses recursion to calculate the sum
# from 1 to n (inclusive of n)

def sum_to(n)
  # Base Case
  return nil if n <= 0
  return 1 if n == 1
  # Recursive Step
  sum_to(n - 1) + n
end

p sum_to(5) == 15
p sum_to(1) == 1
p sum_to(9)  == 45
p sum_to(-8) == nil
