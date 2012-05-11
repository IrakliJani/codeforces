brainfuck = {">" => 1000, "<" => 1001, "+" => 1010, "-" => 1011, "." => 1100, "," => 1101, "[" => 1110, "]" => 1111}
print gets.strip.each_char.inject("") { |str, c| str << brainfuck[c].to_s }.to_i(2) % 1000003
