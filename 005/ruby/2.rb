input, max = [], 0
while g = gets; input.push g.strip; end
input.map! { |i| l = i.length; max = l if l > max; [i, l] }

puts '*' * (max + 2)

left = false

input.each do |i|
	print '*'
	m = (max - i[1])
	s =  m / 2
	if (m % 2).even?
		print ' ' * s, i[0], ' ' * s
	else
		l, r = s, s
		left ? l += 1 : r += 1
		print ' ' * l, i[0], ' ' * r
		left = !left
	end
	puts '*'
end

puts '*' * (max + 2)
