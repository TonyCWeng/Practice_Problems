require 'set'

def len_of_longest_sub(string)
  return 0 if string.empty?
  i = 0
  longest = 0
  current = Set.new
  while i < string.length
    j = i
    while j < string.length
      if current.include?(string[j])
        i += 1
        j = i
        longest = current.length if current.length > longest
      else
        current << string[j]
      end
      j += 1
    end
  end
  longest
end
