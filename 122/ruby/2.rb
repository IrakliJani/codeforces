input, c = gets.split('').map(&:to_i), [0, 0]

input.each do |i|
  c[0] += 1 if i == 4
  c[1] += 1 if i == 7
end

(print -1; exit) if c[0] + c[1] == 0
print c[0] >= c[1] ? 4 : 7
