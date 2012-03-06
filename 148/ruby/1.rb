input = STDIN.read.split("\n")

divs = []; 4.times { divs.push input.shift.to_i }
dragons = input.first.to_i

if divs.include? 1
	STDOUT.puts dragons
	exit
end

count = 0

dragons.times do |dragon|
	divs.each do |div|
		if (dragon + 1) % div == 0
			count += 1
			break
		end
	end
end

STDOUT.puts count