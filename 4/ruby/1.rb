w = STDIN.read.to_i
STDOUT.puts (w % 2 == 0 and w != 2) ? "YES" : "NO"