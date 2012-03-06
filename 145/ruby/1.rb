input = STDIN.read.split("\n")
str1, str2 = input[0].split(//).map(&:to_i), input[1].split(//).map(&:to_i)

str1.length.times {|x|
	if str1[x] == str2[x]
		str1[x] = nil
		str2[x] = nil
	end
}

n4 = str1.count(4)
n7 = str1.count(7)

moves = n4 <= n7 ? n4 : n7
STDOUT.puts moves += (n4 - n7).abs