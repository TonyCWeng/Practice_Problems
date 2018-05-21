# Write a method that solves the Gamma Function recursively.
# The Gamma Function is defined as Γ(n) = (n-1)!
# Note: It should return nil for n <= 0.

def gamma_fnc(n)
  # Base cases
  return nil if n <= 0
  return 1 if n == 1

  # Recursive Step
  (n - 1) * gamma_fnc(n - 1)
end

p gamma_fnc(0) == nil
p gamma_fnc(1) == 1
p gamma_fnc(8) == 5040
