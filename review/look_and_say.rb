
def look_and_say(arr)
  output = [[1, arr[0]]]

  (1...arr.length).each do |idx|
    el = arr[idx]
    if el == output.last[1]
      output.last[0] += 1
    else
      output << [1, el]
    end
  end
  output
end

# time complexity is O(n).

def reverse_in_place(str)
  idx = 0
  while idx < str.length / 2
    # swapped = str[str.length-1-idx]
    # str[str.length-1-idx] = str[idx]
    # str[idx] = swapped
    str[idx], str[str.length-1-idx] = str[str.length-1-idx], str[idx]
    idx += 1
  end
  str
end

p reverse_in_place("docile")
