input = gets.chomp

if input.length == 1
	puts input.swapcase
elsif input =~ /^[a-z][A-Z]+$/
	puts input.capitalize
elsif input =~ /^[A-Z]+$/
	puts input.downcase
else
	puts input
end