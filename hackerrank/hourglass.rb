arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

sums = []
i = 0

while i + 2 < arr.length
    j = 0
    while j + 2 < arr[i].length
        sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        sums << sum
        j += 1
    end
    i += 1
end
p sums.max
