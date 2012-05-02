input = gets.to_i

top = ""

(0..input).each do |x|

  top += "  " * (input - x)

  l = (0..x).to_a
  r = l.reverse
  r.shift

  top += (l + r).join " "
  top += "\n"

end

bot = top.split("\n")
bot.pop

print top + bot.reverse.join("\n")
