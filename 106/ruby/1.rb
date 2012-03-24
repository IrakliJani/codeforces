input = STDIN.read.split("\n")
c = input[0]
f, s = input[1].split

rank = %{6 7 8 9 T J Q K A}

if f[1] == s[1]
	puts rank.index(f[0]) > rank.index(s[0]) ? :YES : :NO
elsif f[0] == c
	puts :YES
else
	puts :NO
end