n, s, min, idx = gets.to_i, gets.strip.split.map(&:to_i), 0, idx

(print [1, n].join " "; exit) if s[0] == s[-1]
min, idx = (s[0] - s[-1]).abs, [1, n]

(0...n - 1).each do |i|
  a, b = i, i + 1
  (print [a + 1, b + 1].join " "; exit) if s[a] == s[b]
  m = (s[a] - s[b]).abs
  if m < min
    min = m
    idx = [a + 1, b + 1]
  end
end

print idx.join " "
