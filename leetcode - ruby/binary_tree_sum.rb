class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def sum_tree(root)
  return 0 unless root
  dfs_sum(root, {})
end

def dfs_sum(node, map)
  return map[node] if map[node]
  sub_sum = node.val
  if node.left
    sub_sum += dfs_sum(node.left, map)
  end
  if node.right
    sub_sum += dfs_sum(node.right, map)
  end
  map[node] = sub_sum
  sub_sum
end

def dfs_sum2(node)
  return 0 unless node
  return node.val unless node.left || node.right
  sum = node.val
  sum += dfs_sum2(node.left) if node.left
  sum += dfs_sum2(node.right) if node.right
  sum
end

a = TreeNode.new(3)
b = TreeNode.new(4)
c = TreeNode.new(5)
d = TreeNode.new(1)
e = TreeNode.new(3)
f = TreeNode.new(1)
a.left = b
a.right = c
b.left = d
b.right = e
c.right = f
# p sum_tree(a)
