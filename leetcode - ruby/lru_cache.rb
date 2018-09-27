# Design and implemen a data structure for Least Recently Used cache.
# It should support the following operations: get and put.

# get(key): get the value of the key if the key exists in the cache,
# otherwise, return -1. Values should always be positive.

# put(key, value): set or inser the value if the key is not already present.
# when the cache has reached its capacity, it should invalidate the least
# recently used item before inserting the new item.

class Node
  attr_accessor :key, :value, :next, :prev
  def initialize(key, value)
    @key = key
    @value = value
    @next = nil
    @prev = nil
  end
end

class LRUCache
  attr_accessor :head, :tail
  def initialize(capacity)
    @capacity = capacity
    @cache = []
    @head = Node.new(0, 0)
    @tail = Node.new(0, 0)
    @head.next = @tail
    @tail.prev = @head
  end
end

a = LRUCache.new("apple")
puts a.head == a.tail.prev
