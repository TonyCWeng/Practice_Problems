require 'set'

class Node
  attr_accessor :name, :children

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

# Probably have to make it a class in order to update visited and order arrays
# Topological Sort is a form of pre-order traversal, as the parent should
# always come before its children nodes.
class TopologicalSort
  attr_accessor :pre_order, :visited

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
      pre_order_traversal(child) unless @visited.include?(node)
    end
  end
end

test_graph = Graph.new
test_graph.nodes << (node1 = Node.new("a"))
test_graph.nodes << (node2 = Node.new("b"))
test_graph.nodes << (node3 = Node.new("c"))
test_graph.nodes << (node4 = Node.new("d"))
test_graph.nodes << (node5 = Node.new("e"))
test_graph.nodes << (node6 = Node.new("f"))

test_graph.add_edge(node1, node2)
test_graph.add_edge(node2, node3)
test_graph.add_edge(node1, node4)
test_graph.add_edge(node4, node5)
test_graph.add_edge(node4, node6)

p TopologicalSort.new(test_graph).pre_order.map(&:to_s)
