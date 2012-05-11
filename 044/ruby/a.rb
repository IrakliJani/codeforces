ls = Hash.new { |a, b| a[b] = [] }
n, count = gets.to_i, 0

n.times do
	l, c = gets.strip.split(" ").map &:to_sym
	unless ls[l].include? c
		ls[l].push c 
		count += 1
	end
end

print count
