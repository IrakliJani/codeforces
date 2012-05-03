gets; input = STDIN.read.split("\n").map {|i| i.split.map! &:to_i }

max, up = 0, 0

input.each do |i|
  up -= i[0]
  up += i[1]
  max = up if max < up
end

print max
