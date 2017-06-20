count = 0
while count < 100
	count += 1
	# Replaces multiples of 3 with Mined
	if count % 3 == 0
		puts "Mined"
	elsif count == 5
		puts "Minds"
	else
		puts count
	end
end
