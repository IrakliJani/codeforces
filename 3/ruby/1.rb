input = STDIN.read.split("\n")
a, b = input[0].split(''), input[1].split('')
a[0], b[0], a[1], b[1] = a[0].ord, b[0].ord, a[1].to_i, b[1].to_i

if a == b
	STDOUT.print 0
	exit
end

x_dir = a[0] > b[0] ? "L" : "R"
y_dir = a[1] > b[1] ? "D" : "U"

str, count = '', 0

loop do

	if a[0] != b[0]
		x_dir == "R" ? a[0] += 1 : a[0] -= 1
		str << x_dir
	end

	if a[1] != b[1]
		y_dir == "U" ? a[1] += 1 : a[1] -= 1
		str << y_dir
	end

	count += 1
	str << "\n"

	break if a == b

end

STDOUT.print count, "\n", str