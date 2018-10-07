# Return the index of the first unique character in a string if it exists.
# Else, return -1.

def first_uniq_char(str)
  counts = {}
  # iterating through str is O(n)
  str.each_char do |char|
    if counts[char]
      counts[char] += 1
    else
      counts[char] = 1
    end
  end

  # Hash#key returns the first occurence of a value. If it does not exist,
  # it returns nil.
  # At worst, iterating through counts is also O(n)
  first_uniq = counts.key(1)
  return -1 if first_uniq.nil?
  # Yet another linear operation.
  str.index(first_uniq)
end

# Time Complexity: O(3n) reduces down toO(n), where n is the length
# of the string.
# Space Complexity: O(n), in the case where every character is unique.

p first_uniq_char("aazbbe")
