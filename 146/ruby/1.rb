input = STDIN.read.split("\n")

num = input[1]

if num.length != num.count('47')
	STDOUT.puts :NO
	exit
end

n = input[0].to_i / 2
num1, num2 = input[1][0..n-1], input[1][n..-1]

sum1 = num1.split(//).map(&:to_i).inject(0){|sum, x| sum += x}
sum2 = num2.split(//).map(&:to_i).inject(0){|sum, x| sum += x}

STDOUT.puts sum1 == sum2 ? :YES : :NO