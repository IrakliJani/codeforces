input = STDIN.read.split("\n")

min_size = input[0].to_i

if min_size == 0
	puts 0
	exit
end

months = input[1].split(' ').map(&:to_i).sort!.reverse!

s = 0
c = 0

months.each do |x|
	s += x
	c += 1
	if s >= min_size
		STDOUT.puts c
		exit
	end
end

STDOUT.puts -1