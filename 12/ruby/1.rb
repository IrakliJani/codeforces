input, check = STDIN.read.gsub(/\s/, '').split(//), true
(input.length / 2).times {|i| check = false if input[i] != input[-i-1]}
STDOUT.puts check ? "YES" : "NO"