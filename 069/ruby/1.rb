input, x, y, z = ["3 -1 7", "-5 2 -4", "2 -1 -3"].map{ |i| i.split.map! &:to_i  }, 0, 0, 0

# gets; input, x, y, z = STDIN.read.split("\n").map{ |i| i.split.map! &:to_i  }, 0, 0, 0

input.each { |i| x += i[0]; y += i[1]; z += i[2] }
print [x, y, z].join == "000" ? :YES : :NO
