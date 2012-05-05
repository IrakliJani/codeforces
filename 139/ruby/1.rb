pages, week, c, i, d = gets.to_i, gets.split.map(&:to_i), 0, 0, nil

loop do
  d = i % 7
  c += week[d]
  i += 1
  break if pages <= c
end

print d + 1
