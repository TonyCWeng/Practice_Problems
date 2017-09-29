# given an integer input from 1-3999, return its roman numeral counterpart

def int_to_rn(int)
  # approach it one digit at a time by mapping out potential values
  # 0 = "", as we skip over that value
  thousands = ["", "M", "MM", "MMM"]
  hundreds = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  tens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  ones = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX" ]
  thousands[int/1000] + hundreds[(int%1000)/100] + tens[(int%100)/10] + ones[int%10]
end
# get thousands by dividing by 1000, simple enough.

# % 1000 removes any thousands, leaving you with at most hundreds.
# then divide by 100 to get number of the hundredths place

# % 100 removes anything higher than the hundreds place, then divide by
# 10 to get number of tens.

# reach ones place by % 10, which would effectively detract any value
# greater than ten in the integer input. % and / are both non-destructive
