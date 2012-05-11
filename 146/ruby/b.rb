class Integer
	def lucky?
		s = self.to_s
		s.length == s.count("47")
	end
	def unmask
		s = self.to_s
		s.split('').select { |char| %w{4 7}.include? char }.join.to_i
	end
end

a, b = gets.strip.split.map &:to_i

if a == 1; print b; exit; end
n = a + 1
until b == n.unmask; n += 1; end

print n
