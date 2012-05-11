m = %w{January February March April May June July August September October November December}
print m[(m.index(gets.strip) + gets.to_i) % 12]
