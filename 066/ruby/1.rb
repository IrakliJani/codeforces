print case gets.to_i
when                 -128..127
  "byte"
when               -32768..32767
  "short"
when          -2147483648..2147483647
  "int"
when -9223372036854775808..9223372036854775807
  "long"
else                     ##
  "BigInteger"
end
