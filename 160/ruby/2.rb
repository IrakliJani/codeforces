input = STDIN.read.split("\n")

n = input[0].to_i
nums = input[1].split('').map(&:to_i)

num1 = nums[0..n-1].sort!
num2 = nums[n..-1].sort!

if num1[0] > num2[0]
	more = true
elsif num1[0] < num2[0]
	more = false
else
	STDOUT.puts "NO"
	exit
end

num1.length.times do |i|
	if more
		if num1[i] <= num2[i]
			STDOUT.puts "NO"
			exit
		end
	else
		if num1[i] >= num2[i]
			STDOUT.puts "NO"
			exit
		end
	end
end

STDOUT.puts "YES"