# Given an array of non-negative integers, return the array such that
# all even integers come before odd integers.

def sort_array_by_parity(a)
  low = 0
  high = a.length - 1
  while low < high
    if a[low] % 2 == 0
      low += 1
    else
      a[low], a[high] = a[high], a[low]
      high -= 1
    end
  end
  a
end
