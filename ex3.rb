count = 0
while count < 100
	count += 1
	# Replaces multiples of 3 with Mined
	if count % 3 == 0
		puts "Mined"
	# Replaces multiples of 5 with Minds
	elsif count % 5 == 0
		puts "Minds"
	else
		puts count
	end
end
