# Write a function that takes in array of Fixnums and returns
# the sum of those numbers. It should be recursive.

def add_numbers(num_arr)
  # Base cases
  return nil if num_arr.empty?
  return num_arr[0] if num_arr.length == 1

  # Recursive step
  num_arr[0] + add_numbers(num_arr[1..-1])
end

p add_numbers([1, 2, 3, 4]) == 10
p add_numbers([-80, 34, 7]) == -39
p add_numbers([]) == nil
