def timeConversion(s)
  hours = s[0..1]
  if s[-2..-1] == "PM"
    new_hours = hours.to_i + 12
    return new_hours.to_s + s[2..-3]
  end
  s[0..-3]
end

p timeConversion("00:05:45AM")
