# Similar to Jump Game 1, but this time, try to find the minimum number of
# jumps needed to reach the last index in the array.
# Difficulty: Hard

def minimum_jumps(arr)
  # two arrays. One to keep track of minimum number of jumps needed to reach
  # the position. The other to keep track of which index was needed to reach
  # the position.
  num_jumps = [0]
  jump_idx = [nil]
  # use two pointers, one being the destination index and the other
  # being where to jump from.
  destination_idx = 1
  while destination_idx < arr.length
    current_idx = 0
    while current_idx < destination_idx
      if can_jump?(arr, current_idx, destination_idx)
        if num_jumps[destination_idx].nil?
          num_jumps << num_jumps[current_idx] + 1
          jump_idx[destination_idx] = current_idx
        elsif num_jumps[current_idx] + 1 < num_jumps[destination_idx]
          num_jumps[destination_idx] = num_jumps[current_idx] + 1
          jump_idx[destination_idx] = current_idx
        end
      end
      current_idx += 1
    end
    destination_idx += 1
  end
  num_jumps[-1]
end

# helper method to determine if we can reach the destination index from
# the current index
def can_jump?(arr, current_idx, destination_idx)
  current_idx + arr[current_idx] >= destination_idx
end

p minimum_jumps([2, 3, 1, 1, 4])
p minimum_jumps([2, 3, 1, 1, 2, 4, 2, 0, 1, 1])
