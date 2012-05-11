n, db = gets.to_i, Hash.new(-1)
n.times do
	name = gets.chomp.to_sym
	db[name] += 1
	if db[name] > 0
		print name, db[name], "\n"
	else
		puts :OK
	end
end
