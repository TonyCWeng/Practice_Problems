=begin
  Given an array of candle heights, return the number of candles of
  the maximum height.
=end

def birthdayCakeCandles(n, ar)
    exhausted = ar.max
    ar.count { |x| x == exhausted }
end
