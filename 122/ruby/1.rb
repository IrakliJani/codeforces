number = gets.strip

(print :YES; exit) if number.length == number.count("47")

number = number.to_i

4.upto(number) {|n| (print :YES; exit) if number % n == 0 && n.to_s.length == n.to_s.count("47")}
print :NO
