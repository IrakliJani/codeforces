x = gets.strip

if x =~ /9\./
	print :"GOTO Vasilisa."
else
	x =~ /(\d+)\.(\d)/
	print $2.to_i < 5 ? $1 : $1.to_i + 1
end
