# Write a recursive method that returns the range of a list of numbers.
# The range's min should be inclusive and the range's  max is exclusive.
# Then write an iterative version of it.

def range1(min, max)
  # Base Case / Inductive Step
  return [] if max <= min

  range1(min, max - 1) << max - 1
end

range1(1, 5)

def iterative_range(min, max)
  return [] if max <= min
  arr = []
  while min < max
    arr << min
    min += 1
  end
  arr
end

p iterative_range(1, 5)
