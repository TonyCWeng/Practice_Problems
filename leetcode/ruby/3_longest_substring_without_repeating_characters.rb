def length_of_longest_substring(s)
  return s.length if s.length <= 1
  dictionary = {}
  start = 0
  current = 0
  longest = 0
  while current < s.length
    if dictionary[s[current]] != nil
      if (current - start) > longest
        longest = current - start
      end
      #reassign start to the value after the repeat letter.
      start = dictionary[s[current]] + 1
      # erase all characters that preceded the start index, as
      # we have not encountered them in the current substring
      dictionary[s[current]] = current
      dictionary.each do |key, val|
        if val < start
          dictionary.delete(key)
        end
      end
    else
      dictionary[s[current]] = current
    end

    current += 1
  end
  print [dictionary, start, current]
  longest >= (current - start) ? longest : (current - start)
end

# We keep track of all letters we come across in a dictionary, with the key
# being the character in question and the value being the index it is found.
# If we encounter a duplicate, we then calculate its length by calculating the
# difference between the index of the duplicate (the current index) and
# the starting point of the current substring. If it is longer than the longest
# substring, then we reassign the longest to the current length. We then
# reassign the start index to the index where we first encountered the duplicate
# character + 1 because we need to exclude it from our next substring.
# We then reassign the duplicate character's index to our current index
# and delete all entries with an index lower than our starting point.
# Time Complexity should be O(n), but not very performant according to leetcode.

def length_of_longest_substring(s)
  return s.length if s.length <= 1
  dictionary = {}
  start_idx = 0
  current = 0
  longest = 0
  while current < s.length
    char = s[current]
    # Our condition to break the current substring is if we've encountered
    # a duplicate, but since we are not erasing dictionary entries (expensive),
    # we must use our start_index to invalidate letters that precede our start_index.
    # As such, we ONLY keep track of when we last saw a letter.
    if dictionary[char] && dictionary[char] >= start_idx
      longest = [longest, current - start_idx].max
      start_idx = dictionary[char] + 1
    end
    dictionary[char] = current
    current += 1
  end
  [longest, current - start_idx].max
end

# Similar approach to the first attempt, only we added a new check.
# We do not directly direct previous dictionary entries. Instead,
# we check to see if the duplicate is properly ahead/at our starting index.
# Otherwise, we know that it is not a duplicate character for our current
# substring and do not need to break the current substring.
