input = gets.strip
surround = input[0] == "-" ? (input[0] = ""; true) : false

input = input.split '.'
l = []

input[0].split('').reverse.each_slice(3) { |s| l << s.reverse.join + "," }
l = l.reverse.join.chop

r = input[1]
r = "00"    if r.nil?
r = r + "0" if r.length == 1
r = r[0, 2] if r.length >= 2

print '(' if surround
print '$', l, '.', r
print ')' if surround
