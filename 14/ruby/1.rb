input = STDIN.read.split("\n"); input.shift

x, y = [], []
input.each.with_index {|v, i| y.push i if v =~ /[*]/ }

input[0].length.times do |i|
	input.each do |v|
		if v[i] == '*'
			x.push i
			break
		end
	end
end

x, y = (x.first..x.last), (y.first..y.last)

y.each {|i| puts input[i][x]}