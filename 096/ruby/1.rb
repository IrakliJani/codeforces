input = gets.chomp
if input =~ /[0]{7,}/ || input =~ /[1]{7,}/
	puts "YES"
else
	puts "NO"
end