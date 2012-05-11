h = Hash.new(0)

gets; while g = gets
	c = g.split
	c[1..-1] = c[1..-1].map &:to_i
	c[1] *= 100
	c[2] *= 50
	c[2] = -c[2]
	h[c[0].to_sym] = c[1..-1].inject(0) { |sum, i| sum += i }
end

max = h.values.max
h.each { |k ,v|  (print k; exit) if v == max}
