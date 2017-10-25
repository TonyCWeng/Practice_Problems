def plus_minus(arr)
  pos = 0
  neg = 0
  zeroes = 0

  arr.each do |x|
    case x <=> 0
    when 1
      post += 1
    when 0
      zeroes += 1
    else
      neg += 1
    end
  end
  [pos, neg, zeroes]
end
