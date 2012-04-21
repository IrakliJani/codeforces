gets.to_i.times do
	word = gets.chomp
	if word.length <= 10
		puts word
	else
		print word[0], word.length - 2, word[-1], "\n"
	end
end