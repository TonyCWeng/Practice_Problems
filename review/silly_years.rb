# Write a function that takes a year (four digit integer) and returns an
# array with the 10 closest subsequent years that meet the following condition:
# the first two digits summed with the last two digits are equal to the middle two digits.

def silly_years(year)
  sillies = []

  until sillies.length == 10
    year += 1
    digits = year.to_s
    first_pair = digits[0..1].map(&:to_i)
    middle_pair = digits[1..2].map(&:to_i)
    end_pair = digits[2..3].map(&:to_i)

    sum = first_pair + end_pair
    sillies << sum if sum == middle_pair
  end
  sillies
end

# Will go back to examine time complexity. Not very clear unless there's a rule
# that bounds an upper limit to the silly years.
