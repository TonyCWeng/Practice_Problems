# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def path_sum(root, sum)
  return [] unless root
  res = []
  path_sum_helper(root, sum, [], res)
  res
end

def path_sum_helper(root, sum, route, res)
  if root.left.nil? && root.right.nil?
    if root.val == sum
      route += [root.val]
      res << route
    end
    # early return because there is no left or right to call.
    return res
  end

  path_sum_helper(root.left, sum - root.val, route + [root.val], res) if root.left
  path_sum_helper(root.right, sum - root.val, route + [root.val], res) if root.right
end
