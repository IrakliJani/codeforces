gets; input = gets.strip.split.map &:to_i
min, max, c = input[0], input[0], 0

input.each do |i|
  (min = i; c += 1) if min > i
  (max = i; c += 1) if max < i
end

print c
