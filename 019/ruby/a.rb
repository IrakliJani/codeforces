n, teams = gets.to_i, {}
n.times { teams[gets.strip.to_sym] = [0, 0, 0] }

while g = gets
	g = g.strip.split(/[:\-[:space:]]/)
	a, b, g1, g2 = g[0].to_sym, g[1].to_sym, g[2].to_i, g[3].to_i

	teams[a][2] += g1
	teams[b][2] += g2

	teams[a][1] -= g2 - g1
	teams[b][1] -= g1 - g2

	if g1 == g2
		teams[a][0] += 1
		teams[b][0] += 1
	elsif g1 > g2
		teams[a][0] += 3
	else
		teams[b][0] += 3
	end

end

t = teams.sort { |a, b| b[1] <=> a[1] }.first(n / 2).map { |data| data[0] }.sort
t.each { |e| puts e }
