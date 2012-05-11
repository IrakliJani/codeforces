str = gets.strip; gets; auto = []
while g = gets; auto.push g.strip; end
s = auto.sort.grep(/^#{str}+/).first
print s ? s : str
