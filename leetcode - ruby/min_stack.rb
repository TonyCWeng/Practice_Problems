class MinStack

  def initialize()
    @stack = []
    @min = []
  end

  def push(x)
    @stack << x
    if @min.empty? || @min.last >= x
      @min << x
    end
  end

  def pop()
    if @stack.pop == @min.last
      @min.pop
    end
  end

  def top()
    @stack.last
  end

  def get_min()
    @min.last
  end
end

# Your MinStack object will be instantiated and called as such:
# p obj = MinStack.new()
# p obj.push(3)
# p obj.push(1)
# p obj.pop()
# p param_3 = obj.top()
# p param_4 = obj.get_min()
