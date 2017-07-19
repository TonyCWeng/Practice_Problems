def sum(arr)
  arr.inject(:+)
end

def sum_odds(arr)
  sum = 0
  arr.each do |x|
    if x % 2 == 1
      sum += x
    end
  end
  sum
end

p sum_odds([1,2,3,4,5])
