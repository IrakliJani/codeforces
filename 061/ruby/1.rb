a, b = STDIN.read.split("\n")
a.length.times { |x| print a[x] == b[x] ? 0 : 1 }
