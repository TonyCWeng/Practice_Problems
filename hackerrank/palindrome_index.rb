

def palindrome_index
  let i = 0

  while i < str.length
    tentative = str[0...i] + str[i+1..-1]
    if tentative == tenative.reverse
      return i
    else
      i += 1
    end
  end

  return -1
end
