# TODO: speed limit

stdin = STDIN.read

num = stdin.split("\n")[0].to_i
input = stdin.split("\n")[1].split(' ').map(&:to_i)

def divs n
	d = []
	for i in 2..n/3
		if n % i == 0
			d.push i
		end
	end
	d
end

divisors = divs num

maxsum = input.inject(0){|sum, i| sum + i}

input_len = num - 1

divisors.each do |d|
	d.times do |i|
		sum = 0
		for inp_i in 0..input_len
			if inp_i % d == i
				sum += input[inp_i]
			end
		end
		maxsum = sum if sum > maxsum
	end
end

STDOUT.puts maxsum
