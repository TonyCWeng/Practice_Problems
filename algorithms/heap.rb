class BinaryMinHeap
  attr_reader :store
  def initialize
    @store = []
  end

  def count
    @store.length
  end

  def peek
    raise "no element to peek" if count == 0
    store[0]
  end

  def extract
    raise "no element to extract" if count == 0
    val = store[0]
    if count > 1
      store[0] = store.pop
      heapify_down
    else
      store.pop
    end
    val
  end

  def add(el)
    store << el
    heapify_up
  end

  def child_indices(parent_idx)
    [2 * parent_idx + 1, 2 * parent_idx +2].select { |idx| idx < count }
  end

  def parent_index(child_idx)
    raise "root has no parent" if child_idx == 0
    (child_idx - 1) / 2
  end

  def heapify_up()
    parent_val = store[parent_index]
    while (parent_index(count-1) && parent_val > store[count-1])
      
    end

end
