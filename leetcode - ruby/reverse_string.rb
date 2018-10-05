def reverse_string(str)
  idx1 = 0
  idx2 = str.length - 1
  until idx1 >= idx2

    str[idx1], str[idx2] = str[idx2], str[idx1]
    idx1 += 1
    idx2 -= 1
  end
  str
end

p reverse_string("abcde")

def recursive_reverse(str)
  return "" if str.empty?
  recursive_reverse(str[1..-1]) + str[0]
end

p recursive_reverse("apple")
