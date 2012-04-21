gets
bars, towers = gets.split.map(&:to_i), Hash.new(0)
bars.each {|bar| towers[bar] += 1}
print towers.values.max, " ", towers.length
