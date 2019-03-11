def min_depth(root)
  return 0 if root.nil?
  dfs(root, 1)
end

def dfs(node, depth)
  return depth if node.left.nil? && node.right.nil?
  node.left ? left = dfs(node.left, depth + 1) : left = Float::INFINITY
  node.right ? right = dfs(node.right, depth + 1) : right = Float::INFINITY
  [left, right].min
end
