n, numbers = gets.to_i, STDIN.read.split("\n")
prefix = numbers[0]

n.times do |i|
	m = numbers[i][0..prefix.length - 1]
	if prefix == m
		next
	else
		while prefix != m
			prefix.chop!
			m.chop!
		end
	end
end

print prefix.length
