

def two_sum(nums, target)
  nums.each_with_index do |num1, idx1|
    remainder = target - num1
    nums.drop(idx + 1).each_with_index do |num2, idx2|
      return [idx1, idx2 + idx1 + 1] if num2 == remainder
    end
  end
end

# Slow. Time Complexity: O(n ** 2). Space Complexity: O(1).

def two_sum2(nums, target)
  remainders = {}
  nums.each_with_index do |x, idx|
    remainder = target - x
    if remainders[remainder]
      return [remainders[remainder], idx]
    end
    remainders[x] = idx
  end
end
# We create a dictionary containing previous values and their indices.
# We return remainders[remainder] if we've previously stumbled upon the
# remainder required. Otherwise, we simply add it to the dictionary.
