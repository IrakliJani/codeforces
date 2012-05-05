# TODO: rewrite!

h, t= gets.split.map &:to_i
names = [:Ciel, :Hanako]

10000000000.times do |i|

  c = 0

  if i % 2 == 0

    if h >= 2
      h -= 2
      c = 200
    elsif h == 1
      h -= 1
      c = 100
    end

    if c == 200 && t >= 2
      t -= 2
    elsif c == 100 && t >= 12
      t -= 12
    elsif c = 0 && t >= 22
      t -= 22
    else
      print names[(i + 1) % 2]
      break
    end

  else

    if t >= 22
      t -= 22
      c = 220
      next
    elsif t >= 12
      t -= 12
      c = 120
    elsif t >= 2
      t -= 2
      c = 20
    end

    if c == 120 && h >= 1
      h -= 1
    elsif c == 20 && h >= 2
      h -= 2
    else
      print names[(i + 1) % 2]
      break
    end

  end

end
