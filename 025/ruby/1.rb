gets; input = gets.strip.split.map &:to_i
odd, even = [], []
input.each {|i| i % 2 == 0 ? even.push(i) : odd.push(i)  }
print even.length == 1 ? input.index(even.first) + 1 : input.index(odd.first) + 1
