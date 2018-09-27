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

class TopologicalSort
  attr_accessor :topologically_sorted, :visited

  def initialize(graph)
    @topologically_sorted = []
    @visited = []

    graph.nodes.each do |node|
      topologically_sorted_traversal(node) unless @visited.include?(node)
    end
  end

  private

  def topologically_sorted_traversal(node)
    @visited << node
    node.children.each do |child|
      topologically_sorted_traversal(child) unless @visited.include?(child)
    end
    # In a topological sort, the parent should always come before children.
    # As such, we unshift nodes to the front of the array after their children
    # have been completely explored.
    @topologically_sorted.unshift(node)
  end
end

test_graph = Graph.new
test_graph.nodes << (node1 = Node.new("a"))
test_graph.nodes << (node2 = Node.new("b"))
test_graph.nodes << (node3 = Node.new("c"))
test_graph.nodes << (node4 = Node.new("d"))
test_graph.nodes << (node5 = Node.new("e"))
test_graph.nodes << (node6 = Node.new("f"))
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


p TopologicalSort.new(test_graph).topologically_sorted.map(&:to_s)
p TopologicalSort.new(test_graph).visited.map(&:to_s)
