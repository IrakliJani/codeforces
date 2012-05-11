def rps a, b, c
	h = {:rock => :scissors, :scissors => :paper, :paper => :rock}

	return 1 if h[a] == b && h[a] == c
	return 2 if h[b] == a && h[b] == c
	return 3 if h[c] == a && h[c] == b
	return 0
end

a, b, c = STDIN.read.split("\n").map(&:to_sym)
p = %w{? F M S}

print p[rps(a, b, c)]
