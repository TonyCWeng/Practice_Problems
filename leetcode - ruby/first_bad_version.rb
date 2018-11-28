def first_bad_version(n)
  return 1 if n == 1
  current_min = 1
  current_max = n
  guess = (current_min + current_max) / 2

  until current_min == current_max
    if is_bad_version(guess)
      current_max = guess
    else
      # We add 1 for two reasons: current_min can never reach current_max
      # without it, as division in Ruby does not round up.
      # And we know that the current guess is invalid, so we may as well
      # go for the next version.
      current_min = guess + 1
    end
    guess = (current_min + current_max) / 2
  end
  current_max
end

# Time complexity: 
