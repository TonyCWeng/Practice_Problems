# Write two versions of exponent that use two different recursions

def exp1(base, power)
  return 1 if power == 0
  base * exp1(base, power - 1)
end

def exp2(base, pow)
  return 1 if pow == 0
  half = exp2(base, pow / 2)

  if pow.odd?
    base * half * half
  elsif pow.even?
    half * half
  end
end

p exp2(2, 4)
