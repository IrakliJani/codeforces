input, u, c = gets.strip.split(''), 'A'..'Z', [0, 0]
input.each { |i| u.include?(i) ? c[0] += 1 : c[1] += 1 }
print c[0] > c[1] ? input.join.upcase : input.join.downcase
