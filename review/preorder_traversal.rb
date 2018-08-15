require 'set'

class Node
  attr_accessor :children

  def initialize(name)
    # Using a set prevents any issue where we add the same node to children
    @children = Set.new
    @name = name
  end

  def to_s
    @name
  end
end

class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def add_edge(parent_node, child_node)
    parent_node.children << child_node
  end
end

class BinaryTreeTraversal
  attr_accessor :pre_order, :post_order, :visited

  def initialize(graph)
    @pre_order = []
    @visited = []

    graph.nodes.each do |node|
      pre_order_traversal(node) unless @visited.include?(node)
    end
  end

  private

  def pre_order_traversal(node)
    @visited << node
    @pre_order << node
    node.children.each do |child|
      pre_order_traversal(child) unless @visited.include?(child)
    end
  end
end

# Test to mimic the tree traversal found in the wikipedia example
# which starts with f.
# https://en.wikipedia.org/wiki/Tree_traversal#Post-order_(LRN)
test_graph = Graph.new
test_graph.nodes << (node6 = Node.new("f"))
test_graph.nodes << (node1 = Node.new("a"))
test_graph.nodes << (node2 = Node.new("b"))
test_graph.nodes << (node3 = Node.new("c"))
test_graph.nodes << (node4 = Node.new("d"))
test_graph.nodes << (node5 = Node.new("e"))
test_graph.nodes << (node7 = Node.new("g"))
test_graph.nodes << (node8 = Node.new("h"))
test_graph.nodes << (node9 = Node.new("i"))

test_graph.add_edge(node6, node2)
test_graph.add_edge(node6, node7)
test_graph.add_edge(node2, node1)
test_graph.add_edge(node2, node4)
test_graph.add_edge(node4, node3)
test_graph.add_edge(node4, node5)
test_graph.add_edge(node7, node9)
test_graph.add_edge(node9, node8)


p BinaryTreeTraversal.new(test_graph).pre_order.map(&:to_s)
