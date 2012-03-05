input = STDIN.read.split('').map(&:to_i)

count = input.count {|x| x == 7 or x == 4}

count.to_s.each_char do |c|
	if c != "4" && c != "7"
		STDOUT.puts "NO"
		exit
	end
end

STDOUT.puts "YES"