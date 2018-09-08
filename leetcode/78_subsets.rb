# Given a set of distinct integers, nums, return all possible subsets
# (the power set). This includes an empty array and the entire nums.
def subsets(nums)
  return [[]] if nums.empty?
  # This line gets called until nums is empty, at which point subs = [[]]
  subs = subsets(nums[1..-1])
  new_subs = subs.map { |sub| sub + [nums[0]] }
  p subs
  p new_subs
  p "----"
  subs.concat(new_subs)
end
p subsets([1,2,3])

def subsets2(nums, subs = [[]])
  return [[]] if nums.empty?
  new_subs = subs.map { |sub| sub + [nums[0]] }
  subs.concat(new_subs)
  subsets2(nums[1..-1], subs)
  subs
end

p subsets2([1,2,3])
