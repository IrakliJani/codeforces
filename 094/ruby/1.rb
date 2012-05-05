pass, list, password = gets.scan(/.{10}/), STDIN.read.split("\n"), ""
pass.each { |p| password += list.index(p).to_s }
print password
