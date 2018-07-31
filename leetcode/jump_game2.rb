# Similar to Jump Game 1, but this time, try to find the minimum number of
# jumps needed to reach the last index in the array.
# Assume that we can always make it to the end of the array.
# Difficulty: Hard

def minimum_jumps(arr)
  # two arrays. One to keep track of minimum number of jumps needed to reach
  # the position. The other to keep track of which index was needed to reach
  # a given index position.
  num_jumps = [0]
  jump_idx = [nil]
  # use two pointers, one being the destination index and the other
  # being which index to jump from to reach it.
  destination_idx = 1
  while destination_idx < arr.length
    current_idx = find_starting_idx(destination_idx, jump_idx)
    p [current_idx, destination_idx]
    # break the inner while loop once we find an answer
    while current_idx < destination_idx && num_jumps[destination_idx].nil?
      if can_jump?(arr, current_idx, destination_idx)
        num_jumps[destination_idx] = num_jumps[current_idx] + 1
        jump_idx[destination_idx] = current_idx
      end
      current_idx += 1
    end
    destination_idx += 1
  end
  p jump_idx
  num_jumps.last
end

# slight optimization in regards to determining current_idx
# we know that any preceding destination index would require less than or
# equal to the number of jumps it will take to reach the current destination
# index. As such, we can start from the jump index of the previous element.
def find_starting_idx(destination_idx, jump_idx)
  jump_idx.length > 1 ? jump_idx[destination_idx - 1] : 0
end

# helper method to determine if we can reach the destination index from
# the current index
def can_jump?(arr, current_idx, destination_idx)
  current_idx + arr[current_idx] >= destination_idx
end

# p minimum_jumps([2, 3, 1, 1, 4])
# p minimum_jumps([2, 3, 4, 1, 1, 1])
# p minimum_jumps([2, 3, 1, 1, 2, 4, 2, 0, 1, 1])
