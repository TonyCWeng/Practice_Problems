# The #dup method does not make a deep copy of an array.
# That is, it does not recursively duplicate nested arrays.
# Instead, the #dup method copies over references to the original array's
# interior arrays.
# Create one that does perform a deep dup for arrays . That is, modifying the
# an interior array will not modify the original object.

def deep_dup(arr)
  new_arr = []
  arr.each do |el|
    if el.is_a?(Array)
      new_arr << deep_dup(el)
    else
      new_arr << el
    end
  end
  new_arr
end

arr = [1, [2], [3, [4]]]
another = deep_dup(arr)
another[2] << 0
p arr
p another

shallow_copy = arr.dup
shallow_copy[2] << "buzz"
p arr
p shallow_copy

# In Ruby, mutability is the property of an instance, not of an entire class.
# Any instance can become immutable by calling the #freeze method, however.
# #freeze turns an object into a constant
