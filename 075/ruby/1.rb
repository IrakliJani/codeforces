a, b = gets.to_i, gets.to_i

class String
  def remove_char c
    self.gsub!(c, "")
    self
  end
end

a2 = a.to_s.remove_char("0").to_i
b2 = b.to_s.remove_char("0").to_i

s1 = a  + b
s2 = a2 + b2

print s1.to_s.remove_char("0").to_i == s2 ? :YES : :NO
