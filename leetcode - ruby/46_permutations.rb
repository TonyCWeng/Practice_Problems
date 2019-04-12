def permutations(arr)

  return [arr] if arr.length <= 1
  # We keep calling permutations on a smaller and smaller array until we hit an
  # array of length 1.
  # At that point, we go back up to the case where array is of length 2.
  # We then move "first" to every position of the array. total_perms be will an array
  # of length 2.
  first = arr.shift
  perms = permutations(arr)
  total_permutations = []

  perms.each do |perm|
    # For each perm, starting from the front of the perm, we insert "first"
    # into every position of the permutation in question.
    (perm.length + 1).times do |i|
      total_permutations << perm[0...i] + [first] + perm[i..-1]
    #   p total_permutations
    end
  end
#   p "----"
  total_permutations
end

# p permutations([1,2,3])
a = [1,2,3]
(a.length+1).times do |i|
    print a[0...i] + [" "] + a[i..-1]
end

# perms = [[1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]]
# first = 4
# total_permutations = []
# perms.each do |perm|
#     (0..perm.length).each do |i|
#       total_permutations << perm[0...i] + [first] + perm[i..-1]
#       p perm[0...i] + [first] + perm[i..-1]
#     end
#     p '----'
# end