
def is_anagram(str1, str2)
  return false if str1.length != str2.length
  counts1 = letter_counts(str1)
  counts2 = letter_counts(str2)

  counts1.each do |k, _|
    if counts1[k] != counts2[k]
      return false
    end
  end
  true
end

def letter_counts(str)
  str.each_char do |char|
    if counts[char]
      counts[char] += 1
    else
      counts[char] = 1
    end
  end
  counts
end
