# n, k, l, c, d, p, nl, np = "3 4 5 10 8 100 3 1".split.map &:to_i

n, k, l, c, d, p, nl, np = gets.split.map &:to_i
drinkm, slices, c = k * l, c * d, 0

loop do
  n.times { |i| drinkm -= nl; slices -= 1; p -= np }
  break unless [drinkm, slices, p].select { |e| e < 0 }.empty?
  c += 1
end

print c
