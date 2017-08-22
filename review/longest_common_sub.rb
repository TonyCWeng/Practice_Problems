def longest_common_sub(str1, str2)
  longest = ''
  start = 0
  while start < str1.length
    len = longest.length + 1

    while (start + len) <= str1.length
      end_idx = start + len
      substring = str1[start...end_idx]
      longest = substring if str2.include?(substring)
      len += 1
    end
    start += 1
  end
end

# better solution

def make_matrix(str1, str2)
  matrix = Array.new(str1.length + 1) { Array.new(str2.length + 1, 0) }

  # create an n x m sized matrix, where each row signifies the starting idx
  # each value starts at 0, signify substring chains by incrementing by 1
  # until each letter no longer matches. In which case, reset to 0.
  str1.chars.each_with_index do |el1, idx1|
    str2.chars.each_with_index do |el2, idx2|
      if el1 == el2
        matrix[idx1 + 1][idx2 + 1] = matrix[idx1][idx2] + 1
      else
        matrix[idx1 + 1][idx2 + 1] = 0
      end
    end
  end
  matrix
end

def longest_common_substring(str1, str2)
  matrix = make_matrix(str1, str2)
  len = matrix.flatten.max

  matrix.each_with_index do |row, idx1|
    row.each_with_index do |length, idx2|
      if length == len
        return str2[idx2 - length...idx2]
      end
    end
  end
end

p longest_common_substring("abcdef", "abccdef")
