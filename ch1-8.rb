def is_sub?(s1, s2)
  return false if s1.length != s2.length
  s1 = s1 * 2
  s1.include?(s2)
end
