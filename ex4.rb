count = 0
while count < 100
	count += 1
	# Replaces multiples of 3 with Mined
	if count % 3 == 0 and count % 5 == 0
		puts "Mined Minds"
	elsif count % 5 == 0
		puts "Minds"
	elsif count % 3 == 0 
		puts "Mined"			
	else
		puts count
	end
end
