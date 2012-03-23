a, b, n = STDIN.read.split.map(&:to_i)

loop do
	[a, b].each.with_index do |i, k|
		n -= i.gcd n
		if n <= 0
			puts k == 1 ? 1 : 0
			exit
		end
	end
end