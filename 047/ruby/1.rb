input, c, sum = gets.to_i, 0, 0

loop do
  c += 1; sum += c

  if    sum == input; print :YES ; exit
  elsif sum  > input; print :NO  ; exit
  end

end
