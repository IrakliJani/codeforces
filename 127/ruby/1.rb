n, k = gets.split.map &:to_i
points = STDIN.read.split("\n").map { |e| e.split.map! &:to_i }
distance = 0

(points.length - 1).times { |i| distance += Math.sqrt((points[i][0] - points[i + 1][0]) ** 2 + (points[i][1] - points[i + 1][1]) ** 2) }

print "%.9f" % (distance * k / 50.0)
