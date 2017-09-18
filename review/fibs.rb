def fibs(num)
  return [] if num == 0
  return [0] if num == 1
  sequence = [0, 1]
  while sequence.length < num
    sequence << sequence[-2] + sequence[-1]
  end
  sequence
end

# time complexity: O(2**n)

def recur_fibs(num)
  return [] if num == 0
  return [0] if num == 1
  return [0, 1] if num == 2

  prev = recur_fibs(num - 1)
  prev << prev[-1] + prev[-2]
  prev
end

def palindrome?(string)
  i = 0
  len = string.length
  while i < len
    return false if string[i] != string[len - i - 1]
    i += 1
  end
  true
end

#time complexity: linear (or n/2, same deal)
#space complexity: constant,
