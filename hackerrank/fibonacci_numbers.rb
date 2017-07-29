@fibs = [0,1]
def fibonacci(n)
  return @fibs[n] if @fibs[n]
  @fibs[n] = fibonacci(n-1) + fibonacci(n-2)
end

#Doesn't work on hackerrank without memoization!
p fibonacci(6)
