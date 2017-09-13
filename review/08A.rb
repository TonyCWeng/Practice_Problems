# I give you a scrambled list of n unique integers between 0 and n.
# Tell me what number is missing.

def find_gap(arr)
  complete_range = (0..arr.max).to_a
  #construction an array of all possible numbers
  missing = (complete_range - arr).first
  #missing number will be the difference between 0 to arr.max
end

p find_gap([1,2,3])
