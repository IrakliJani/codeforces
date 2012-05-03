gets; input = STDIN.read.split("\n")
input.map! {|i| i.split(" ").map(&:to_i)}

count = 0

input.each do |i|
  c = [false, false, false, false]
  input.each do |j|
    if i != j

      c[0] = true if i[0]  > j[0] && i[1] == j[1]
      c[1] = true if i[0]  < j[0] && i[1] == j[1]
      c[2] = true if i[0] == j[0] && i[1]  < j[1]
      c[3] = true if i[0] == j[0] && i[1]  > j[1]

      if c.count(true) == 4
        count += 1
        break
      end
    end
  end
  c = [false, false, false, false]
end

print count
