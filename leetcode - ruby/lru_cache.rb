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
    @cache = {}
    @head = Node.new(0, 0)
    @tail = Node.new(0, 0)
    @head.next = @tail
    @tail.prev = @head
  end

  def get(key)
    # If we find the key, we need to refresh it (as it is now the most
    # recently accessed item in the cache). We can do so by removing it
    # and adding it back to the cache.
    if @cache[key]
      node = @cache[key]
      remove(node)
      add(node)
      node.value
    else
      -1
    end
  end

  def put(key, value)
    # Again, if the key already exists, then we need to refresh it by
    # removing it from cache
    remove(@cache[key]) if @cache[key]
    node = Node.new(key, value)
    add(node)
    @cache[key] = node
    if @cache.length > @capacity
      least_recently_used = @tail.prev
      remove(least_recently_used)
      @cache.delete(least_recently_used.key)
    end
  end

  private

  def add(node)
    # This implementation adds to the head, meaning that the LRU item is
    # removed from the tail.
    next_node = @head.next
    @head.next = node
    next_node.prev = node
    node.prev = @head
    node.next = next_node
  end

  # We can remove a node from the LRUCache by having its previous node
  # point to its next node and its next node point to its previous.
  def remove(node)
    prev = node.prev
    next_node = node.next
    prev.next = next_node
    next_node.prev = prev
  end
end

a = LRUCache.new(2)
a.put(1, 1)
a.put(2, 2)
p a.get(1)
a.put(3,3) # 2 is evicted from the cache.
p a.get(2) # should return -1, as 2
