res = {:taxi => Hash.new(0), :pizza => Hash.new(0), :girl => Hash.new(0)}
sum = {:taxi => [], :pizza => [], :girl => []}
names = []

class String
	def which?
		n = self.gsub('-', '')
		n = n.split('').map &:to_i
		if    n.count == n.count(n[0])
			'taxi'
		elsif       n == n.uniq.sort.reverse
			'pizza'
		else
			'girl'
		end
	end
end

gets; while g = gets
	g = g.chop.split
	n = g[0].to_i
	names.push g[1].to_sym
	n.times do
		num = gets.chop!
		res[num.which?.to_sym][g[1].to_sym] += 1
	end
end

res.each do |key, hash|
	max = hash.values.max
	hash.each { |k, v| sum[key].push(k) if v == max }
end

{
	:taxi => 'call a',
	:pizza => 'order a',
	:girl => 'go to a cafe with a wonderful'
}.each do |k, v|
	print "If you want to #{v} #{k}, you should call: "
	print sum[k].empty? ? names.join(', ') : sum[k].join(', ')
	puts "."
end

