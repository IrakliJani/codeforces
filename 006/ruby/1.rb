input = STDIN.read.split(' ').map(&:to_i).sort.combination(3).to_a

str = "IMPOSSIBLE"

input.each do |i|
	if i[2] < i[0] + i[1]
		str = "TRIANGLE" 
		break
	elsif i[2] == i[0] + i[1]
		str = "SEGMENT"
	end
end

STDOUT.print str