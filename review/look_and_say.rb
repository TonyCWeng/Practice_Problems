
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
