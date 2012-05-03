n, a, b = gets.split.map(&:to_i)
print (n - a < b + 1) ? n - a : b + 1
