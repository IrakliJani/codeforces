gets; laptops, old = STDIN.read.split("\n").map {|l| l.split.map! &:to_i }, []

laptops.each do |l|
  laptops.each do |a|
    (old.push l; break) if l[0] < a[0] && l[1] < a[1] && l[2] < a[2]
  end
end

min = 1001
(laptops - old).each { |l| min = l[3] if l[3] < min }

laptops.each.with_index { |l, i| (print i + 1; break) if l[3] == min }
