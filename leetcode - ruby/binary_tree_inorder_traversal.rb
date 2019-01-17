# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def inorder_traversal(root)
  return [] if root.nil?
  visited = []
  inorder_dfs(root, visited)
  visited
end

def inorder_dfs(root, visited)
  inorder_dfs(root.left, visited) if root.left
  visited << root.val
  inorder_dfs(root.right, visited) if root.right
end

# Iterative Solution

def inorder_traversal(root)
  traversal_order = []
  stack = []
  current_node = root
  until current_node.nil? && stack.empty?
    if current_node
      stack.push(current_node)
      current_node = current_node.left
    else
      current_node = stack.pop
      traversal_order << current_node.val
      current_node = current_node.right
    end
  end
  traversal_order
end
