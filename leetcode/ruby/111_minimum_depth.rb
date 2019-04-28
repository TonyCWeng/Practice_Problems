class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# DFS. Time Complexity: O(n), n being the number of nodes.
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

# Iterative BFS approach
def min_depth(root)
  return 0 if root.nil?
  stack = [[root, 1]]
  until stack.empty?
    node, level = stack.shift
    if node.left.nil? && node.right.nil?
      return level
    end
    stack << [node.left, level + 1] if node.left
    stack << [node.right, level + 1] if node.right
  end
end
# While both DFS and BFS approaches have a linear runtime, the DFS solution
# inspects every single node for an answer. The BFS approach can exit immediately
# upon hitting the min depth.
