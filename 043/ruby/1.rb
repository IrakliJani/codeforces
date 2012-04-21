score = Hash.new(0)

gets; while i = gets
	score[i.chomp] += 1
end

puts score.select{|k, v| v == score.values.max}.keys.join