def array
	array = [*1..100]
	array.each_with_index do |num, index|
		if num % 15 == 0
			array[index] = 'MinedMinds'
		elsif num % 3 == 0
			array[index] = 'Mined'
		elsif num % 5 == 0
			array[index] = 'Minds'
		else
			num
		end
	end
end