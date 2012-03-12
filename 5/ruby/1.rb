input, names, traffic = STDIN.read.split("\n"), [], 0

input.each do |i|
	if i[0] == '+'
		names.push i[1..-1]
	elsif i[0] == '-'
		names.delete i[1..-1]
	else
		msg = i.split(':')
		traffic += names.length * msg[1].length unless msg[1].nil?
	end
end

p traffic