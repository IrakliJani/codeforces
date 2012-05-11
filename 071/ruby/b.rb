n, k, t = gets.split(' ').map &:to_i
p, bar = n * k * t / 100, []

n.times do |i|
	bar.push [p, k].min
	p -= bar.last
end

puts bar.join " "
