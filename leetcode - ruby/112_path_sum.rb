# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def has_path_sum(root, sum)
  return false unless root
  return root.val == sum unless root.left || root.right
  path_sum_helper(root, 0, sum)
end

def path_sum_helper(node, current_sum, target_sum)
  return false if node.nil?
  return current_sum + node.val == target_sum if node.left.nil? && node.right.nil?
  path_sum_helper(node.left, current_sum + node.val, target_sum) ||
  path_sum_helper(node.right, current_sum + node.val, target_sum)
end

# We don't really need a current sum, however. We can subtract from the sum
# and check if we hit 0 when there is no left/right child nodes.

def has_path_sum(root, sum)
  return false if root.nil?
  return sum - root.val == 0 if root.left.nil? && root.right.nil?
  has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
end
