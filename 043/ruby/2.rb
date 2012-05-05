h, l = STDIN.read.split("\n")

l.each_char do |c|
  next if c == ' '
  i = h.index c
  (print :NO; exit) if i.nil?
  h[i] = ''
end

print :YES
