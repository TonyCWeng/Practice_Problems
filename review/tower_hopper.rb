# Tower Hopper: The height of the tower determines the maximum number
# of indices your character can move to next. Determine if a set of
# towers is "hoppable". That is, that they can traverse from index 0
# to outside of the array (hop past the last index of the array)

# def is_hoppable?(towers)
#   initial_idx = 0
#   initial_step = towers[0]
#   goal = towers.length
#
#   make_move(towers, initial_idx, initial_step, goal)
# end
#
# def make_move(towers, current_idx, step_size, goal)
#   while step_size > 0
#     next_position = current_idx + step_size
#     if next_position >= goal
#       return true
#     else
#       new_step = towers[next_position]
#       return make_move(towers, next_position, new_step, goal)
#     end
#     step_size -= 1
#   end
#   false
# end

# def is_hoppable?(towers)
#   initial_idx = 0
#   initial_step = towers[0]
#   goal = towers.length
#
#   while initial_step > 0
#     make_move(towers, initial_idx, initial_step, goal)
#     initial_step -= 1
#   end
# end

def is_hoppable?(towers)
  goal = towers.length
  return false if goal == 0
  idx = 0
  next_idx = towers[idx]

  while idx <= goal && idx <= next_idx
    return true if idx >= goal
    new_idx = idx + towers[idx]
    next_idx = new_idx if next_idx < new_idx
    idx += 1
  end
  false
end

p is_hoppable?([4, 2, 0, 0, 2, 10])
