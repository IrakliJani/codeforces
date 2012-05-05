gets; bags, c = gets.split.map(&:to_i), 0

class Array
  def sum
    self.inject{ |sum, e| sum + e }
  end
end

bags.each.with_index do |bag, i|
  d = bags.dup
  d.delete_at(i)

  (c += 1; break) if d.empty?
  (c += 1)        if d.sum.even?
end

print c
