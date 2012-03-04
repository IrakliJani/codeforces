input = STDIN.read.split("\n")

k = input[0][2..-1].to_i
input = input[1].split(' ').map(&:to_i)

min = input[k - 1]

STDOUT.puts input.count {|x| x >= min && x > 0 }