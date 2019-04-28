
def plus_one(digits)
  new_digits = []
  carry = 1
  digits.reverse.each do |digit|
    new_value = carry + digit
    # x.divmod(y) returns [quotient, modulus]
    carry, new_value = new_value.divmod(10)
    p [carry, new_value]
    new_digits.unshift(new_value)
  end
  new_digits.unshift(carry) if carry == 1
  new_digits
end

p plus_one([9,9,9,9])
