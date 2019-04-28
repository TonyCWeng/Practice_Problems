
def generate(rows)
  return [] if rows <= 0
  return [[1]] if rows == 1
  return [[1], [1, 1]] if rows == 2
  triangle = [[1], [1, 1]]
  idx1 = 1
  until triangle.length == rows
    next_row = [1, 1]
    idx2 = 1
    until idx2 == triangle[idx1].length
      next_val = triangle[idx1][idx2 - 1] + triangle[idx1][idx2]
      next_row.insert(idx2, next_val)
      idx2 += 1
    end
    idx1 += 1
    triangle[idx1] = next_row
  end
  triangle
end

p generate(3)
