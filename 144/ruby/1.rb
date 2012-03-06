STDIN.gets
i = STDIN.gets.split(' ').map(&:to_i)

max, min = i.max, i.min

max_i = -1; min_i = 100

i.length.times do |k|
	max_i = k if max_i == -1 and i[k] == max
	min_i = k if i[k] == min
end

c = max_i - 1 + i.length - min_i
c -= 1 if max_i > min_i

STDOUT.puts c