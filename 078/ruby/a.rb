input, heiku = STDIN.read.split("\n"), [5, 7, 5]
input.each_with_index { |v, k| (print :NO; exit) if v.count("aeiou") != heiku[k] }
print :YES
