input = STDIN.read.split("\n")

ss = input.shift.split(' ').map(&:to_i)

students, subjects = ss[0], ss[1]


subj_max = []

subjects.times { subj_max.push 0 }

subjects.times do |i|
	students.times do |j|
		subj_max[i] = input[j][i].to_i if input[j][i].to_i > subj_max[i]
	end
end

succ = 0

students.times do |i|
	subjects.times do |j|
		if input[i][j].to_i == subj_max[j].to_i
			succ += 1
			break
		end
	end
end

STDOUT.puts succ