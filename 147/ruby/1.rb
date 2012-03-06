# http://codeforces.com/contest/147/submission/1292809

input = STDIN.read.gsub(/ +/, ' ')

chars = ".,?!:;"

input = input.split(//)

input.each.with_index do |v, k|
	if chars.include? v
		if input[k - 1] == " "
			input[k - 1] = v
			input[k + 1] != " " ? input[k] = " " : input[k] = ""
		elsif input[k + 1] != " "
			input[k] = v + " "
		end
	end
end

STDOUT.puts input.join('')