# write a recursive and an iterative Fibonacci method. It should
# take in a number n and return the first n Fibonacci numbers.
# Note: By defintion, the first two fibonacci numbers are 0 and 1.
def fibonacci_sequence(n)
  return nil if n <= 0
  return [1] if n == 1
  return [0, 1] if n == 2
  # Need to write a return statement for n <= 2, as the recursive step
  # needs a "seed" fibonacci array of size 2

  fibs = fibonacci_sequence(n - 1)
  fibs << fibs[-2] + fibs[-1]
end

p fibonacci_sequence(10)

def fibonacci_value(n)
  return 0 if n == 1
  return 1 if n == 2

  fibonacci_value(n - 1) + fibonacci_value(n - 2)
end

p fibonacci_value(10)
