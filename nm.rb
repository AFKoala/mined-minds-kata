def mined(num)
	if num % 3 == 0 and num % 5 == 0
		'minedminds'
	elsif num % 3 == 0
		'mined'
	elsif num % 5 == 0
		'minds'
	else
		num
	end
end