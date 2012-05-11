n, c, str = gets.to_i, 1, ""
0.upto(n - 2) { |i| str << (c = ((c + i) % n) + 1).to_s << " " }
print str.chop
