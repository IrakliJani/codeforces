n = gets.strip.gsub /[\/]+/, "/"
print n[-1] == "/" && n.length > 1 ? n.chop : n
