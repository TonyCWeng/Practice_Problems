def is_palindrome(s)
  syntax_free = s.downcase.gsub(/[^a-z0-9]/, '')
  left = 0
  right = syntax_free.length - 1
  until left >= right
    return false if syntax_free[left] != syntax_free[right]
    left += 1
    right -= 1
  end
  true
end
