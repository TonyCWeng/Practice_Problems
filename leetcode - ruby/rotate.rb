
def rotate(matrix)
  matrix = matrix.reverse
  i = 0
  while i < matrix.length
    j = i + 1
    while j < matrix[0].length
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      j += 1
    end
    i += 1
  end
  matrix
end

a = [[1,2,3],[4,5,6],[7,8,9]]
p rotate(a)
