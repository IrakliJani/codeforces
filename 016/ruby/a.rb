gets; flag = STDIN.read.split "\n"

flag.each.with_index do |f, i|
	if f.length == f.count(f[0])
		f.length.times do |j|
			if i > 0
				(print :NO; exit) if flag[i][j] == flag[i - 1][j]
			end
		end
	else
		print :NO
		exit
	end
end

print :YES
