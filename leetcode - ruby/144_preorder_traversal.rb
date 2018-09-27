# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val)
#     @val = val
#     @left, @right = nil, nil
#   end
# end

# Preorder: root, left, right
def preorder_traversal(root)
  visited = []
  traverse(root, visited)
  visited
end

def traverse(node, visited)
  return if node.nil?
  visited.push(node.val)
  traverse(root.left, visited)
  traverse(root.right, visited)
end
