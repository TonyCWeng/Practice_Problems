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

# Iterative solution

def preorder_traversal(root)
  traversal_order = []
  stack = []
  stack << root if root
  until stack.empty?
    current_node = stack.pop
    traversal_order << current_node.val
    # We need to push the right node first because Stacks are LIFO
    # and the later node is read first.
    stack << current_node.right if current_node.right
    stack << current_node.left if current_node.left
  end
  traversal_order
end
