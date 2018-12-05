
def hamming_distance(x, y)
  x, y = x.to_s(2), y.to_s(2)
  return 0 if x == y
  min = [x, y].min
  max = [x, y].max
  length_difference = max.length - min.length
  min = ('0' * length_difference) + min
  hamming_distance = 0
  min.length.times do |idx|
    hamming_distance += 1 if min[idx] != max[idx]
  end
  hamming_distance
end

# p hamming_distance(3, 1)
x = 8
p x
x >>= 1
p x
x >>= 1
p x
x >>= 1
p x
