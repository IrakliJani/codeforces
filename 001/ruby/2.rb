gets; while i = gets do
	if i =~ /^([A-Z]+)(\d+)$/
		c = 0
		$1.each_byte {|chr| c =  c * 26 + chr - 64}
		print "R", $2, "C", c, "\n"
	elsif i =~ /^R(\d+)C(\d+)/
		c = $2.to_i
		str=""
		while c != 0
			mod = c % 26
			if mod == 0 then
				mod = 26
				c -= mod
			end
			str << (mod + 64).chr
			c /= 26
		end
		print str.reverse, $1, "\n"
	end
end