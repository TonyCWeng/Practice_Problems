

def min_cost_climbing_stairs(cost)
  first_route, second_route = 0, 0
  idx = cost.length - 1
  # Starting from the very end of the cost array, we keep track of the
  # cost of reaching the last pair of steps.
  while idx >= 0
    current_cost = cost[idx] + [first_route, second_route].min
    second_route = first_route
    first_route = current_cost
    p [second_route, first_route, idx]
    idx -= 1
  end
  [second_route, first_route].min
end

# p min_cost_climbing_stairs([1, 0, 1, 0, 1, 0, 1, 0])

# Don't really need to start from the end of the array. Can build up from
# the first two values. From the third step and on, keep producing the
# minimum cost of reaching said step.
def min_cost(stairs)
  min_step_cost = [stairs[0], stairs[1]]
  idx = 2
  while idx < stairs.length
    min_step_cost[idx] = stairs[idx] + [min_step_cost[idx - 1], min_step_cost[idx - 2]].min
    idx += 1
  end
  p min_step_cost
  [min_step_cost[-2], min_step_cost[-1]].min
end

p min_cost([0,1,1,0])
