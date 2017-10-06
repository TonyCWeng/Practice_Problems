require 'matrix'

# Given two integer matrices, return their dot product

def dot_product(a,b)
  matrix_a = Vector[*a]
  matrix_b = Vector[*b]
  p matrix_a.inner_product(matrix_b)
end
dot_product([1,2,3], [1,2,3])
