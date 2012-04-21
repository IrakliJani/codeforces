n, d = gets.to_i - 1, 1

while n >= 5 * d
	n -= 5 * d
	d *= 2
end

puts %w{Sheldon Leonard Penny Rajesh Howard}[n / d]