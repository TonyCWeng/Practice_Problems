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

# p fibonacci_sequence(10)

def fibonacci_value(n)
  return 0 if n == 1
  return 1 if n == 2

  fibonacci_value(n - 1) + fibonacci_value(n - 2)
end

# p fibonacci_value(10)

# Issue: The Fibonacci sequence will have a time complexity of 2**n.
# Memoization can be used to prevent this growth

@cache = [0, 1]
def fib(n)
  return @cache[n] if @cache[n]

  @cache[n] = fib(n - 1) + fib(n - 2)
end
