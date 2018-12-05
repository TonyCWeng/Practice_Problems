def missing_number(nums)
  total_val = sum_of_n_numbers(nums.length + 1)
  nums.each do |x|
    total_val -= x
  end
  total_val
end

def sum_of_n_numbers(n)
  total = 0
  # (nums.length + 1).times encloses every value in the range of numbers,
  # including that of the missing number.
  n.times do |val|
    total += val
  end
  total
end

def missing_number(nums)
  # as times is an enumerator, we can call reduce on it
  a = (nums.size + 1).times.reduce(:^)
  b = nums.reduce(:^)
  a ^ b
end

p missing_number([9,6,4,2,3,5,7,0,1])
