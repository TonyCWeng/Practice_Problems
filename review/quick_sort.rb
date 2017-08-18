# In-place quick sort
# Same

def self.partition
  prc ||= Proc.new {|el1, el2| el1 <=> el2 }
  new_pivot = start + rand(length)
  array[start], new_pivot = array[new_pivot], array[start]
  #needs to use parallel assignment, so that we assign a new_pivot simultaneously.

  pivot_idx = start
  pivot = array[start]

  ((start + 1)...(start + length)).each do |idx|
    if prc.call(pivot, array(idx)) > 0
      array[idx] = array[pivot_idx + 1]
      array[pivot_idx + 1] = array[idx]
      pivot_idx += 1
    end
  end

end
