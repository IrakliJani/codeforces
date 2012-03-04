input = STDIN.read.split("\n")

n = input[0].to_i
a = input[1].split(" ").map(&:to_i)


avg = a.inject(0.0) {|sum, e| sum + e} / n

str = ""
count = 0

a.each.with_index do |v, k|
	if v.to_f == avg
		str << (k + 1).to_s << " " 
		count += 1
	end
end

STDOUT.puts count
STDOUT.puts str.chop