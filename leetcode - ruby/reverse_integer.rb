# Given a 32-bit signed integer, reverse the digits of an integer.
# If the input is negative, then the return value should also be negative.
# For the purpose of this problem, if the integer is larger than the 32-bit
# signed range, return 0. (-2,147,483,648 to 2,147,483,647)

def reverse(x)
  reversed = x.to_s.reverse.to_i
  reversed *= -1 if x < 0

  if reversed > 2**31 - 1 || reversed < -2**31
    return 0
  end
  reversed
end
