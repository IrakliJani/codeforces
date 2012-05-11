n, x, y = gets.strip.split.map &:to_i; c = n / 2
print (x == c || x == c + 1) && (y == c || y == c + 1)  ? :NO : :YES
