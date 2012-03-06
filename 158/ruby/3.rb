input = STDIN.read.split("\n")
input_num = input.shift.to_i

$tree = {
	'/' => nil
}

$pwd = '/'

def add_dir dir
	if $pwd == '/'
		if $tree['/'] == nil
			$tree['/'] = {dir => nil}
		else
			$tree['/'].merge!({dir => nil})
		end
	else
		tree = $pwd.split('/')
		tree[0] = '/'
		tree.inject($tree) do |acc, value|
			if acc[value] == nil
				acc[value] = {$dir => nil}
			else
				acc[value].merge!({dir => nil})
			end
		end
	end
	if $pwd == '/'
		$pwd += dir
	else
		$pwd += '/' + dir
	end
end

input.each do |str|
	if str == 'pwd'
		if $pwd == '/'
			STDOUT.puts '/'
		else
			STDOUT.puts $pwd + '/'
		end
	else
		dirs = str[3..-1].split('/')
		dirs.each do |dir|
			if dir == ""
				$pwd = '/'
			elsif dir != '..'
				add_dir dir
			else
				$pwd = $pwd.split('/')
				$pwd.pop
				$pwd = $pwd.join('/')
				$pwd = '/' if $pwd == ''
			end
		end
	end
end