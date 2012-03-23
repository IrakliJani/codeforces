input = STDIN.read.split("\n").map {|i| i.split}; input.shift

rt, cw, mn, ca,= [], [], [], []

input.each do |i|
	case i.last
	when 'captain'
		ca.push i.first
	when 'man'
		mn.push i.first
	when 'woman', 'child'
		cw.push i.first
	when 'rat'
		rt.push i.first
	end
end

[rt, cw, mn, ca].each.each {|i| puts i}