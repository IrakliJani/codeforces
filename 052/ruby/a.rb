gets; n = gets.strip
print [n.count("1"), n.count("2"), n.count("3")].sort[0,2].inject(0) { |sum, e| sum += e }
