gets
ca, c = [0] * 5, 0
STDIN.read.split.each {|i| ca[i.to_i] += 1}

c += ca[4]
c += ca[2] / 2

ca[2] = ca[2].odd? ? 1 : 0

if ca[1] <= ca[3]
	c += ca[1]
	ca[3] -= ca[1]
	ca[1] = 0
else
	c += ca[3]
	ca[1] -= ca[3]
	ca[3] = 0
end

if ca[3] > 0
	c += ca[3]
end

if ca[2] > 0
	c += 1
	ca[1] -= 1 if ca[1] >= 2
	ca[1] -= 1 if ca[1] >= 1
end

c += (ca[1] / 4.0).ceil

puts c