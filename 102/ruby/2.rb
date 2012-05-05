n, i = gets.strip, 0

(print 0; exit) if n.length == 1

loop do
  n = n.split(//).map(&:to_i).inject { |sum, e| sum += e  }.to_s
  (print i + 1; exit) if n.length == 1
  i += 1
end
