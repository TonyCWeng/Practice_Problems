class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def rob(root)
  dfs_rob(root, {})
end

def dfs_rob(root, hash = {})
  return 0 unless root
  return hash[root] if hash[root]
  # p "Current node value: #{root.val}, left: #{root.left}, right: #{root.right}"
  total_val = 0
  if root.left
    total_val += dfs_rob(root.left.left, hash) + dfs_rob(root.left.right, hash)
  end
  if root.right
    total_val += dfs_rob(root.right.left, hash) + dfs_rob(root.right.right, hash)
  end
  total_val = [total_val + root.val, dfs_rob(root.left, hash) + dfs_rob(root.right, hash)].max
  # want to memoize subproblem answers with a hash table, where the key is
  # the node and the value is the maximum amount we can rob from that point
  # in the tree.
  hash[root] = total_val
  total_val
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
p rob(a)
