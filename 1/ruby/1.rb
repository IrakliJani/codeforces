n, m, a = STDIN.read.split(' ').map(&:to_i)
flags_x, flags_y = n / a, m / a
flags_x += 1 unless n % a == 0
flags_y += 1 unless m % a == 0
STDOUT.puts flags_x * flags_y