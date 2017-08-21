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
