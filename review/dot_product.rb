require 'matrix'

# Given two integer matrices, return their dot product

def dot_product(a,b)
  # matrix_a = Vector[*a]
  # matrix_b = Vector[*b]
  return false if a.length != b.length
  matrix_a = Vector.elements(a, copy = true)
  matrix_b = Vector.elements(b, copy = true)
  p matrix_a.inner_product(matrix_b)
end

def dot_product(a, b)
  return false if a.length != b.length
  return 0 if a.length == 0

  i = 0
  product = 0
  while i < a.length
    product += a[i] * b[i]
    i += 1
  end
  product
end
