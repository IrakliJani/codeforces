m, n = STDIN.read.split.map &:to_i

if n.odd?
  c  = m * (n - 1) / 2
  c += (m / 2.0).floor
else
  c  = m * n / 2
end

print c
