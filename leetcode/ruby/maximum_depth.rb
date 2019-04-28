# Given a Binary tree, find its maxmimum depth.

def max_depth(root)
  return 0 if root.nil?
  dfs(root, 0)
end

def dfs(node, depth)
  return depth unless node
  depth += 1
  # With this arrangement, left_depth and right_depth have a minimum
  # depth of 1, due to the existence of their parent node.
  left_depth = dfs(node.left, depth)
  right_depth = dfs(node.right, depth)

  # We return the larger of the two depths
  right_depth >= left_depth ? right_depth : left_depth
end
p 7 & 7
