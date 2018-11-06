def str_str(haystack, needle)
  return 0 if needle.empty?
  found = haystack.index(needle)
  found ? found : -1
end
# If we pass in a string to index, it will return the start of the string
# if it can be found in the haystack. Else, it will return nil.
# For leetcode, they wish for us to return 0 if needle is an empty string
# as a corner case and to return -1 if the needle cannot be found.
p str_str("allbribridgedge", "bridge")

# Method used before realizing that index could be passed a string longer
# than 1.
def str_str2(haystack, needle)
  return 0 if needle.empty?
  current_idx = haystack.index(needle[0])
  until current_idx .nil?
    if haystack[current_idx, needle.length] == needle
      return current_idx
    else
      previous_idx = current_idx
      current_idx = haystack[current_idx + 1..-1].index(needle[0])
      if current_idx
        current_idx = current_idx + previous_idx + 1
      end
    end
  end
  -1
end
