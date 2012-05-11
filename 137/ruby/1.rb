c = 0
(gets.strip.split(/(P+)/) - [""]).each do |r|
	dm = r.length.divmod 5
	c += dm[1] == 0 ? dm[0] : dm[0] + 1
end
print c
