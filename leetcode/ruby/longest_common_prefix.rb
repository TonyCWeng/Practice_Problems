
def longest_common_prefix(strs)
  return "" if strs.empty?
  return strs[0] if strs.length == 1
  i = 0
  shortest_word = strs.min_by(&:length)
  bool = true
  longest_prefix = shortest_word[i]
  while i < shortest_word.length && bool
    longest_prefix = shortest_word[0..i]
    strs.each do |word|
      if word[0..i] != longest_prefix
        longest_prefix = shortest_word[0...i]
        bool = false
        break
      end
    end
    i += 1
  end
  longest_prefix.nil? ? "" : longest_prefix
end
arr = ["apple", "apps", "applies"]
# p longest_common_prefix(arr)
# p longest_common_prefix(["", ""])
# p longest_common_prefix(["flower","flow","flight"])
