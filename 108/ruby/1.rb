h, m = gets.split(':').map &:to_i

loop do
  m += 1
  h += 1 if m > 59
  h  = 0 if h > 23
  m  = 0 if m > 59

  break if ("%02d" % h) == ("%02d" % m).to_s.reverse
end

print [("%02d" % h), ("%02d" % m)].join ':'
