groups = STDIN.read.split("\n")[1].split(' ').map(&:to_i)

max = 4
count = 0

groups.sort!.reverse!

while !groups.empty? do
	if groups.length == 1
		count += 1
		break
	end
	if groups.first == max
		groups.shift
		count += 1
	else
		if groups.first + groups.last == max
			groups.shift
			groups.pop
			count += 1
		elsif groups.first + groups.last > max
			groups.shift
			count += 1
		else
			groups[0] = groups.first + groups.last
			groups.pop
		end
	end
end

STDOUT.puts count