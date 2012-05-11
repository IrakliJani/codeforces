a, b = [], []; gets
gets.strip.each_char.with_index { |c, i| a.push i if c == "1" }
a[0].step(a[-1], a[1] - a[0]) { |e| b.push << e }
print a == b ? :YES : :NO
