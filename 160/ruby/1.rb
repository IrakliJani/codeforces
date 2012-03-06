input = STDIN.read.split("\n")[1].split(" ").map(&:to_i).sort!

count = 0
sum = 0

while !input.empty? and sum <= input.inject {|sum, v| sum += v} do
	sum += input.pop
	count += 1
end

STDOUT.puts count